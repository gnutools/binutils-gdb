#source: property-x86-empty.s
#source: property-x86-ibt.s
#source: property-x86-shstk.s
#source: property-x86-3.s
#as: --64 -defsym __64_bit__=1 -mx86-used-note=yes
#ld: -r -melf_x86_64 -z shstk-report=error
#error: .*: error: missing SHSTK property.*: error: missing SHSTK property.*: error: missing SHSTK property
