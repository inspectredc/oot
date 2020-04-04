glabel func_80A5673C
/* 0066C 80A5673C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00670 80A56740 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00674 80A56744 944E0EDC */  lhu     $t6, 0x0EDC($v0)           ## 8015F53C
/* 00678 80A56748 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0067C 80A5674C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00680 80A56750 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 00684 80A56754 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00688 80A56758 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0068C 80A5675C 11E00008 */  beq     $t7, $zero, .L80A56780
/* 00690 80A56760 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00694 80A56764 3C0480A5 */  lui     $a0, %hi(D_80A57010)       ## $a0 = 80A50000
/* 00698 80A56768 0C00084C */  jal     osSyncPrintf

/* 0069C 80A5676C 24847010 */  addiu   $a0, $a0, %lo(D_80A57010)  ## $a0 = 80A57010
/* 006A0 80A56770 0C00B55C */  jal     Actor_Kill

/* 006A4 80A56774 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A8 80A56778 1000003A */  beq     $zero, $zero, .L80A56864
/* 006AC 80A5677C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A56780:
/* 006B0 80A56780 A6000284 */  sh      $zero, 0x0284($s0)         ## 00000284
/* 006B4 80A56784 94580EE4 */  lhu     $t8, 0x0EE4($v0)           ## 00000EE4
/* 006B8 80A56788 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 006BC 80A5678C 13200032 */  beq     $t9, $zero, .L80A56858
/* 006C0 80A56790 00000000 */  nop
/* 006C4 80A56794 94480F04 */  lhu     $t0, 0x0F04($v0)           ## 00000F04
/* 006C8 80A56798 24197008 */  addiu   $t9, $zero, 0x7008         ## $t9 = 00007008
/* 006CC 80A5679C 3C0480A5 */  lui     $a0, %hi(D_80A57074)       ## $a0 = 80A50000
/* 006D0 80A567A0 31091000 */  andi    $t1, $t0, 0x1000           ## $t1 = 00000000
/* 006D4 80A567A4 15200024 */  bne     $t1, $zero, .L80A56838
/* 006D8 80A567A8 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 006DC 80A567AC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 006E0 80A567B0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 006E4 80A567B4 2484C444 */  addiu   $a0, $a0, 0xC444           ## $a0 = 0600C444
/* 006E8 80A567B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006EC 80A567BC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 006F0 80A567C0 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 006F4 80A567C4 468021A0 */  cvt.s.w $f6, $f4
/* 006F8 80A567C8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 006FC 80A567CC 24A5C444 */  addiu   $a1, $a1, 0xC444           ## $a1 = 0600C444
/* 00700 80A567D0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00704 80A567D4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00708 80A567D8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0070C 80A567DC 4600320D */  trunc.w.s $f8, $f6
/* 00710 80A567E0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00714 80A567E4 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00718 80A567E8 440B4000 */  mfc1    $t3, $f8
/* 0071C 80A567EC 00000000 */  nop
/* 00720 80A567F0 000B6400 */  sll     $t4, $t3, 16
/* 00724 80A567F4 000C6C03 */  sra     $t5, $t4, 16
/* 00728 80A567F8 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 0072C 80A567FC 00000000 */  nop
/* 00730 80A56800 46805420 */  cvt.s.w $f16, $f10
/* 00734 80A56804 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00738 80A56808 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 0073C 80A5680C 240E7007 */  addiu   $t6, $zero, 0x7007         ## $t6 = 00007007
/* 00740 80A56810 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00744 80A56814 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00748 80A56818 3C0480A5 */  lui     $a0, %hi(D_80A57048)       ## $a0 = 80A50000
/* 0074C 80A5681C A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
/* 00750 80A56820 A60F0282 */  sh      $t7, 0x0282($s0)           ## 00000282
/* 00754 80A56824 A6180284 */  sh      $t8, 0x0284($s0)           ## 00000284
/* 00758 80A56828 0C00084C */  jal     osSyncPrintf

/* 0075C 80A5682C 24847048 */  addiu   $a0, $a0, %lo(D_80A57048)  ## $a0 = 80A57048
/* 00760 80A56830 10000005 */  beq     $zero, $zero, .L80A56848
/* 00764 80A56834 00000000 */  nop
.L80A56838:
/* 00768 80A56838 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 0076C 80A5683C A6080282 */  sh      $t0, 0x0282($s0)           ## 00000282
/* 00770 80A56840 0C00084C */  jal     osSyncPrintf

/* 00774 80A56844 24847074 */  addiu   $a0, $a0, %lo(D_80A57074)  ## $a0 = 00007074
.L80A56848:
/* 00778 80A56848 3C0980A5 */  lui     $t1, %hi(func_80A56874)    ## $t1 = 80A50000
/* 0077C 80A5684C 25296874 */  addiu   $t1, $t1, %lo(func_80A56874) ## $t1 = 80A56874
/* 00780 80A56850 10000003 */  beq     $zero, $zero, .L80A56860
/* 00784 80A56854 AE09025C */  sw      $t1, 0x025C($s0)           ## 0000025C
.L80A56858:
/* 00788 80A56858 0C00B55C */  jal     Actor_Kill

/* 0078C 80A5685C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A56860:
/* 00790 80A56860 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A56864:
/* 00794 80A56864 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00798 80A56868 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0079C 80A5686C 03E00008 */  jr      $ra
/* 007A0 80A56870 00000000 */  nop


