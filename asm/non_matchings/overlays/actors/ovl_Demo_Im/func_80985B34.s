glabel func_80985B34
/* 00F54 80985B34 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00F58 80985B38 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00F5C 80985B3C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00F60 80985B40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F64 80985B44 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00F68 80985B48 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00F6C 80985B4C 0C26144D */  jal     func_80985134
/* 00F70 80985B50 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00F74 80985B54 10400029 */  beq     $v0, $zero, .L80985BFC
/* 00F78 80985B58 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00F7C 80985B5C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00F80 80985B60 24842218 */  addiu   $a0, $a0, 0x2218           ## $a0 = 06012218
/* 00F84 80985B64 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F88 80985B68 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00F8C 80985B6C 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 00F90 80985B70 468021A0 */  cvt.s.w $f6, $f4
/* 00F94 80985B74 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00F98 80985B78 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00F9C 80985B7C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00FA0 80985B80 24A52218 */  addiu   $a1, $a1, 0x2218           ## $a1 = 06012218
/* 00FA4 80985B84 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00FA8 80985B88 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00FAC 80985B8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FB0 80985B90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FB4 80985B94 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00FB8 80985B98 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00FBC 80985B9C 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00FC0 80985BA0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00FC4 80985BA4 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 00FC8 80985BA8 AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 00FCC 80985BAC 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00FD0 80985BB0 8F39FA90 */  lw      $t9, -0x0570($t9)          ## 8015FA90
/* 00FD4 80985BB4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00FD8 80985BB8 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00FDC 80985BBC 8728145E */  lh      $t0, 0x145E($t9)           ## 8016145E
/* 00FE0 80985BC0 8E0A0270 */  lw      $t2, 0x0270($s0)           ## 00000270
/* 00FE4 80985BC4 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00FE8 80985BC8 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 00FEC 80985BCC AE09026C */  sw      $t1, 0x026C($s0)           ## 0000026C
/* 00FF0 80985BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF4 80985BD4 46805420 */  cvt.s.w $f16, $f10
/* 00FF8 80985BD8 46128100 */  add.s   $f4, $f16, $f18
/* 00FFC 80985BDC 15400005 */  bne     $t2, $zero, .L80985BF4
/* 01000 80985BE0 E6040268 */  swc1    $f4, 0x0268($s0)           ## 00000268
/* 01004 80985BE4 0C261632 */  jal     func_809858C8
/* 01008 80985BE8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 0100C 80985BEC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01010 80985BF0 AE0B0270 */  sw      $t3, 0x0270($s0)           ## 00000270
.L80985BF4:
/* 01014 80985BF4 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 01018 80985BF8 A20C00C8 */  sb      $t4, 0x00C8($s0)           ## 000000C8
.L80985BFC:
/* 0101C 80985BFC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01020 80985C00 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01024 80985C04 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01028 80985C08 03E00008 */  jr      $ra
/* 0102C 80985C0C 00000000 */  nop


