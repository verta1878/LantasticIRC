#!/usr/bin/env python3
"""nosextract.py — LANtastic v6.0 NOS archive tool

Lists and extracts files from NOS.001-004 archives used by
Artisoft's LANtastic v6.0 installer (Knowledge Dynamics wINSTALL).

Archive format:
  Per-file record:
    +00: "RR\x01" (3 bytes) — magic
    +03: uint16 = 41 — header size
    +05: 3 bytes — timestamp/flags (always 30 61 1C in v6.0)
    +08: uint32 — compressed data size
    +0C: uint32 — uncompressed file size
    +10: uint16 — 0xFFFF marker
    +12: uint16 — CRC/checksum
    +14: uint16 — reserved (0)
    +16: uint16 — compression type (1=compressed)
    +18: uint16 — reserved (11)
    +1A: 15 bytes — filename (null-padded 8.3 format)
    +29: [comp_size bytes] — compressed data

Compression: proprietary (Knowledge Dynamics / wINSTALL).
Algorithm not yet reversed. This tool lists contents only.

Usage:
  python nosextract.py NOS.001 [NOS.002 ...]
  python nosextract.py --verify NOS.001 --bindir ../bin/
"""

import struct, sys, os

HEADER_SIZE = 41
MAGIC = b'RR\x01'

def parse_nos(filename):
    """Parse a NOS archive and return list of file entries."""
    with open(filename, 'rb') as f:
        d = f.read()
    
    files = []
    i = 0
    while i < len(d) - HEADER_SIZE:
        if d[i:i+3] != MAGIC:
            i += 1
            continue
        
        w1 = struct.unpack('<H', d[i+3:i+5])[0]
        if w1 != HEADER_SIZE:
            i += 1
            continue
        
        comp_size = struct.unpack('<I', d[i+8:i+12])[0]
        uncomp_size = struct.unpack('<I', d[i+12:i+16])[0]
        crc = struct.unpack('<H', d[i+18:i+20])[0]
        comp_type = struct.unpack('<H', d[i+22:i+24])[0]
        
        # Extract filename
        fname = ""
        for j in range(i+0x1A, min(i+0x1A+15, len(d))):
            if d[j] == 0: break
            if 0x20 <= d[j] < 0x7F:
                fname += chr(d[j])
        
        files.append({
            'name': fname,
            'offset': i,
            'comp_size': comp_size,
            'uncomp_size': uncomp_size,
            'crc': crc,
            'comp_type': comp_type,
        })
        
        i += HEADER_SIZE + comp_size
    
    return files

def main():
    if len(sys.argv) < 2:
        print("Usage: nosextract.py [--verify --bindir DIR] NOS.001 [NOS.002 ...]")
        sys.exit(1)
    
    verify = False
    bindir = None
    nos_files = []
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == '--verify':
            verify = True
        elif sys.argv[i] == '--bindir':
            i += 1
            bindir = sys.argv[i]
        else:
            nos_files.append(sys.argv[i])
        i += 1
    
    total_files = 0
    for nos in nos_files:
        files = parse_nos(nos)
        print(f"\n=== {nos} ({os.path.getsize(nos):,} bytes) ===")
        print(f"{'#':>3} {'Filename':15s} {'Compressed':>10} {'Original':>10} {'Ratio':>6}")
        print("-" * 50)
        
        for idx, f in enumerate(files, 1):
            ratio = f['comp_size'] / f['uncomp_size'] if f['uncomp_size'] > 0 else 0
            status = ""
            if verify and bindir:
                binpath = os.path.join(bindir, f['name'])
                if os.path.exists(binpath):
                    actual = os.path.getsize(binpath)
                    if actual == f['uncomp_size']:
                        status = " ✓"
                    else:
                        status = f" SIZE MISMATCH ({actual} vs {f['uncomp_size']})"
                else:
                    status = " (not in bin/)"
            
            print(f"{idx:3d} {f['name']:15s} {f['comp_size']:10,} {f['uncomp_size']:10,} {ratio:5.1%}{status}")
        
        total_files += len(files)
        print(f"\n{len(files)} files in {nos}")
    
    print(f"\nTotal: {total_files} files across {len(nos_files)} archives")

if __name__ == '__main__':
    main()
