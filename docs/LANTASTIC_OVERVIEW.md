# LANtastic — Technical Overview

## History
- **1987**: LANtastic 1.0 released by Artisoft, Inc., Tucson, AZ
- **1989-1993**: Peak popularity, DOS versions 3.x-5.x
- **1994**: LANtastic 6.0 — DOS + Windows 3.x support, NDIS, NetBIOS
- **1996-1998**: Versions 7.x-8.01, added Win95/NT support
- **1999**: Artisoft acquired, LANtastic discontinued

## Architecture (v6)
- Peer-to-peer: every node can be both client and server
- SERVER.EXE — file/print sharing server (TSR)
- REDIR.EXE — client redirector (TSR, hooks INT 21h/2Fh)
- AILANBIO.EXE — Artisoft NetBIOS transport layer
- LANBIOS*.EXE — NetBIOS protocol drivers
- NET.EXE / NET_MGR.EXE — user command interface
- Uses NDIS or proprietary adapter drivers

## Third-Party Components
- **C Runtime**: statically linked, likely Borland C 3.x or MSC 6.0
- **NDIS**: Microsoft Network Driver Interface Specification
  - Possible open-source: GitHub NDIS implementations
- **NetBIOS**: Network Basic Input/Output System
  - Possible open-source: Samba project (GPLv3), Microsoft samples
- **Compiler**: TBD — identify from binary MZ header and library signatures

## NOS Archive Format
Proprietary compressed installer archive used across LANtastic 6.x-8.x.
Same format ("RR\x01" magic) found in both v6 and v8.01 NOS files.
