glabel func_8008078C
/* 08138C 8008078C 000470C0 */  sll   $t6, $a0, 3
/* 081390 80080790 01C47023 */  subu  $t6, $t6, $a0
/* 081394 80080794 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 081398 80080798 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08139C 8008079C 000E7140 */  sll   $t6, $t6, 5
/* 0813A0 800807A0 01CF1821 */  addu  $v1, $t6, $t7
/* 0813A4 800807A4 846200AE */  lh    $v0, 0xae($v1)
/* 0813A8 800807A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0813AC 800807AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0813B0 800807B0 10400026 */  beqz  $v0, .L8008084C
/* 0813B4 800807B4 00803825 */   move  $a3, $a0
/* 0813B8 800807B8 24010001 */  li    $at, 1
/* 0813BC 800807BC 10410006 */  beq   $v0, $at, .L800807D8
/* 0813C0 800807C0 24640030 */   addiu $a0, $v1, 0x30
/* 0813C4 800807C4 24010002 */  li    $at, 2
/* 0813C8 800807C8 10410012 */  beq   $v0, $at, .L80080814
/* 0813CC 800807CC 24640030 */   addiu $a0, $v1, 0x30
/* 0813D0 800807D0 1000001F */  b     .L80080850
/* 0813D4 800807D4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800807D8:
/* 0813D8 800807D8 3C05C37A */  lui   $a1, 0xc37a
/* 0813DC 800807DC 8C660040 */  lw    $a2, 0x40($v1)
/* 0813E0 800807E0 AFA30018 */  sw    $v1, 0x18($sp)
/* 0813E4 800807E4 0C0104EE */  jal   f32_step_towards
/* 0813E8 800807E8 AFA70020 */   sw    $a3, 0x20($sp)
/* 0813EC 800807EC 8FA30018 */  lw    $v1, 0x18($sp)
/* 0813F0 800807F0 10400016 */  beqz  $v0, .L8008084C
/* 0813F4 800807F4 8FA70020 */   lw    $a3, 0x20($sp)
/* 0813F8 800807F8 C4640040 */  lwc1  $f4, 0x40($v1)
/* 0813FC 800807FC 00E02025 */  move  $a0, $a3
/* 081400 80080800 46002187 */  neg.s $f6, $f4
/* 081404 80080804 0C021BF5 */  jal   func_80086FD4
/* 081408 80080808 E4660040 */   swc1  $f6, 0x40($v1)
/* 08140C 8008080C 10000010 */  b     .L80080850
/* 081410 80080810 8FBF0014 */   lw    $ra, 0x14($sp)
.L80080814:
/* 081414 80080814 24050000 */  li    $a1, 0
/* 081418 80080818 8C660040 */  lw    $a2, 0x40($v1)
/* 08141C 8008081C AFA30018 */  sw    $v1, 0x18($sp)
/* 081420 80080820 0C0104EE */  jal   f32_step_towards
/* 081424 80080824 AFA70020 */   sw    $a3, 0x20($sp)
/* 081428 80080828 8FA30018 */  lw    $v1, 0x18($sp)
/* 08142C 8008082C 10400007 */  beqz  $v0, .L8008084C
/* 081430 80080830 8FA70020 */   lw    $a3, 0x20($sp)
/* 081434 80080834 C4680040 */  lwc1  $f8, 0x40($v1)
/* 081438 80080838 00E02025 */  move  $a0, $a3
/* 08143C 8008083C 24050001 */  li    $a1, 1
/* 081440 80080840 46004287 */  neg.s $f10, $f8
/* 081444 80080844 0C021C07 */  jal   func_8008701C
/* 081448 80080848 E46A0040 */   swc1  $f10, 0x40($v1)
.L8008084C:
/* 08144C 8008084C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80080850:
/* 081450 80080850 27BD0020 */  addiu $sp, $sp, 0x20
/* 081454 80080854 03E00008 */  jr    $ra
/* 081458 80080858 00000000 */   nop   
