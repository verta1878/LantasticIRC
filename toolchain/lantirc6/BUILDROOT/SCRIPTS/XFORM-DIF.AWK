# xform-dif.awk - expand QMAX_DIF.ASM's REPT/CATSTR/SUBSTR macro chains
BEGIN {
    hex = "0123456789ABCDEF"
    in_rept = 0
}
{ gsub(/\r$/, "") }

/^[ \t]+rept[ \t]+256[ \t]*$/ {
    in_rept = 1; rept_count = 256; macro_name = ""
    print "; --- pre-expanded REPT 256 ---"
    next
}
/^[ \t]+rept[ \t]+32[ \t]*$/ {
    in_rept = 1; rept_count = 32; macro_name = ""
    print "; --- pre-expanded REPT 32 ---"
    next
}

in_rept {
    if (match($0, /^[ \t]+([A-Z][A-Z0-9_]+)[ \t]+%N/, m)) {
        macro_name = m[1]
    }
    if (/^[ \t]+endm/) {
        in_rept = 0
        if (macro_name == "") {
            print "; ERROR: no MACRO %N call found"
            next
        }
        for (i = 0; i < rept_count; i++) {
            hi = substr(hex, 1 + int(i/16), 1)
            lo = substr(hex, 1 + (i%16), 1)
            printf "\t %s %s%s\n", macro_name, hi, lo
        }
        print "; --- end pre-expanded REPT ---"
        macro_name = ""
        next
    }
    next
}

{ print }
