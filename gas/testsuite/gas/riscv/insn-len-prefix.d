#as: -march=rv64if_xaifet
#source: insn-len-prefix.s
#objdump: -s -j .text

.*:[ 	]+file format .*

Contents of section .text:
 0000 1f750000 df950000 3f86f6fd 3f97a70c  .*
 0010 3fa8884c                             .*
