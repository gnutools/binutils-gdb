#source: property-x86-empty.s
#source: property-x86-ibt.s
#source: property-x86-shstk.s
#source: property-x86-3.s
#as: --x32 -mx86-used-note=yes
#ld: -r -m elf32_x86_64 -z ibt-report=error
#error: .*: error: missing IBT property.*: error: missing IBT property.*: error: missing IBT property
