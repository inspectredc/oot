glabel func_80985948
/* 00D68 80985948 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00D6C 8098594C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00D70 80985950 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00D74 80985954 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D78 80985958 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00D7C 8098595C 0C26143A */  jal     func_809850E8
/* 00D80 80985960 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00D84 80985964 10400019 */  beq     $v0, $zero, .L809859CC
/* 00D88 80985968 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00D8C 8098596C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00D90 80985970 24841C08 */  addiu   $a0, $a0, 0x1C08           ## $a0 = 06011C08
/* 00D94 80985974 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00D98 80985978 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D9C 8098597C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00DA0 80985980 468021A0 */  cvt.s.w $f6, $f4
/* 00DA4 80985984 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00DA8 80985988 44070000 */  mfc1    $a3, $f0
/* 00DAC 8098598C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00DB0 80985990 24A51C08 */  addiu   $a1, $a1, 0x1C08           ## $a1 = 06011C08
/* 00DB4 80985994 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DB8 80985998 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00DBC 8098599C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00DC0 809859A0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00DC4 809859A4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00DC8 809859A8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00DCC 809859AC 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00DD0 809859B0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00DD4 809859B4 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 00DD8 809859B8 AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 00DDC 809859BC AE00026C */  sw      $zero, 0x026C($s0)         ## 0000026C
/* 00DE0 809859C0 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 00DE4 809859C4 0C26162A */  jal     func_809858A8
/* 00DE8 809859C8 E6080268 */  swc1    $f8, 0x0268($s0)           ## 00000268
.L809859CC:
/* 00DEC 809859CC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DF0 809859D0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00DF4 809859D4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00DF8 809859D8 03E00008 */  jr      $ra
/* 00DFC 809859DC 00000000 */  nop


