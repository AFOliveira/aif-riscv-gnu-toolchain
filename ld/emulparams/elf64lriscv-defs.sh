source_sh ${srcdir}/emulparams/elf32lriscv-defs.sh
ELFSIZE=64
TEXT_START_ADDR=0x8000800000 # ETSOC1
SEPARATE_GOTPLT="SIZEOF (.got.plt) >= 16 ? 16 : 0"
