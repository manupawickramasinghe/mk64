# Mario Kart 64 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

/* 006BB0 80005FB0 00853020 */  add   $a2, $a0, $a1
/* 006BB4 80005FB4 3403FFFF */  li    $v1, 65535
/* 006BB8 80005FB8 03E00008 */  jr    $ra
/* 006BBC 80005FBC 0066102B */   sltu  $v0, $v1, $a2

/* 006BC0 80005FC0 03E00008 */  jr    $ra
/* 006BC4 80005FC4 0085102A */   slt   $v0, $a0, $a1

/* 006BC8 80005FC8 00000000 */  nop   
/* 006BCC 80005FCC 00000000 */  nop   
