/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/152/Desktop/CS152A-Lab4-TicTacToe/Lookup.v";



static void Cont_191_0(char *t0)
{
    char t3[8];
    char t13[8];
    char t31[8];
    char t59[8];
    char t69[8];
    char t97[8];
    char t107[8];
    char t135[8];
    char t145[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    char *t149;
    char *t150;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    char *t174;
    char *t175;
    char *t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    unsigned int t184;
    unsigned int t185;
    char *t186;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(191, ng0);
    t2 = (t0 + 2008U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 8);
    t6 = (t4 + 12);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 4);
    *((unsigned int *)t3) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 4);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t11 & 511U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 511U);
    t14 = (t0 + 2008U);
    t15 = *((char **)t14);
    memset(t13, 0, 8);
    t14 = (t13 + 4);
    t16 = (t15 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (t17 >> 27);
    *((unsigned int *)t13) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 27);
    *((unsigned int *)t14) = t20;
    t21 = (t15 + 8);
    t22 = (t15 + 12);
    t23 = *((unsigned int *)t21);
    t24 = (t23 << 5);
    t25 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t25 | t24);
    t26 = *((unsigned int *)t22);
    t27 = (t26 << 5);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 | t27);
    t29 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t29 & 511U);
    t30 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t30 & 511U);
    t32 = *((unsigned int *)t3);
    t33 = *((unsigned int *)t13);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = (t3 + 4);
    t36 = (t13 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB4;

LAB5:
LAB6:    t60 = (t0 + 2008U);
    t61 = *((char **)t60);
    memset(t59, 0, 8);
    t60 = (t59 + 4);
    t62 = (t61 + 4);
    t63 = *((unsigned int *)t61);
    t64 = (t63 >> 18);
    *((unsigned int *)t59) = t64;
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 18);
    *((unsigned int *)t60) = t66;
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & 511U);
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & 511U);
    t70 = *((unsigned int *)t31);
    t71 = *((unsigned int *)t59);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = (t31 + 4);
    t74 = (t59 + 4);
    t75 = (t69 + 4);
    t76 = *((unsigned int *)t73);
    t77 = *((unsigned int *)t74);
    t78 = (t76 | t77);
    *((unsigned int *)t75) = t78;
    t79 = *((unsigned int *)t75);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB7;

LAB8:
LAB9:    t98 = (t0 + 2008U);
    t99 = *((char **)t98);
    memset(t97, 0, 8);
    t98 = (t97 + 4);
    t100 = (t99 + 4);
    t101 = *((unsigned int *)t99);
    t102 = (t101 >> 9);
    *((unsigned int *)t97) = t102;
    t103 = *((unsigned int *)t100);
    t104 = (t103 >> 9);
    *((unsigned int *)t98) = t104;
    t105 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t105 & 511U);
    t106 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t106 & 511U);
    t108 = *((unsigned int *)t69);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    *((unsigned int *)t107) = t110;
    t111 = (t69 + 4);
    t112 = (t97 + 4);
    t113 = (t107 + 4);
    t114 = *((unsigned int *)t111);
    t115 = *((unsigned int *)t112);
    t116 = (t114 | t115);
    *((unsigned int *)t113) = t116;
    t117 = *((unsigned int *)t113);
    t118 = (t117 != 0);
    if (t118 == 1)
        goto LAB10;

LAB11:
LAB12:    t136 = (t0 + 2008U);
    t137 = *((char **)t136);
    memset(t135, 0, 8);
    t136 = (t135 + 4);
    t138 = (t137 + 4);
    t139 = *((unsigned int *)t137);
    t140 = (t139 >> 0);
    *((unsigned int *)t135) = t140;
    t141 = *((unsigned int *)t138);
    t142 = (t141 >> 0);
    *((unsigned int *)t136) = t142;
    t143 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t143 & 511U);
    t144 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t144 & 511U);
    t146 = *((unsigned int *)t107);
    t147 = *((unsigned int *)t135);
    t148 = (t146 | t147);
    *((unsigned int *)t145) = t148;
    t149 = (t107 + 4);
    t150 = (t135 + 4);
    t151 = (t145 + 4);
    t152 = *((unsigned int *)t149);
    t153 = *((unsigned int *)t150);
    t154 = (t152 | t153);
    *((unsigned int *)t151) = t154;
    t155 = *((unsigned int *)t151);
    t156 = (t155 != 0);
    if (t156 == 1)
        goto LAB13;

LAB14:
LAB15:    t173 = (t0 + 3992);
    t174 = (t173 + 56U);
    t175 = *((char **)t174);
    t176 = (t175 + 56U);
    t177 = *((char **)t176);
    memset(t177, 0, 8);
    t178 = 511U;
    t179 = t178;
    t180 = (t145 + 4);
    t181 = *((unsigned int *)t145);
    t178 = (t178 & t181);
    t182 = *((unsigned int *)t180);
    t179 = (t179 & t182);
    t183 = (t177 + 4);
    t184 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t184 | t178);
    t185 = *((unsigned int *)t183);
    *((unsigned int *)t183) = (t185 | t179);
    xsi_driver_vfirst_trans(t173, 0, 8);
    t186 = (t0 + 3896);
    *((int *)t186) = 1;

LAB1:    return;
LAB4:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    t45 = (t3 + 4);
    t46 = (t13 + 4);
    t47 = *((unsigned int *)t45);
    t48 = (~(t47));
    t49 = *((unsigned int *)t3);
    t50 = (t49 & t48);
    t51 = *((unsigned int *)t46);
    t52 = (~(t51));
    t53 = *((unsigned int *)t13);
    t54 = (t53 & t52);
    t55 = (~(t50));
    t56 = (~(t54));
    t57 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t57 & t55);
    t58 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t58 & t56);
    goto LAB6;

LAB7:    t81 = *((unsigned int *)t69);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t69) = (t81 | t82);
    t83 = (t31 + 4);
    t84 = (t59 + 4);
    t85 = *((unsigned int *)t83);
    t86 = (~(t85));
    t87 = *((unsigned int *)t31);
    t88 = (t87 & t86);
    t89 = *((unsigned int *)t84);
    t90 = (~(t89));
    t91 = *((unsigned int *)t59);
    t92 = (t91 & t90);
    t93 = (~(t88));
    t94 = (~(t92));
    t95 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t95 & t93);
    t96 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t96 & t94);
    goto LAB9;

LAB10:    t119 = *((unsigned int *)t107);
    t120 = *((unsigned int *)t113);
    *((unsigned int *)t107) = (t119 | t120);
    t121 = (t69 + 4);
    t122 = (t97 + 4);
    t123 = *((unsigned int *)t121);
    t124 = (~(t123));
    t125 = *((unsigned int *)t69);
    t126 = (t125 & t124);
    t127 = *((unsigned int *)t122);
    t128 = (~(t127));
    t129 = *((unsigned int *)t97);
    t130 = (t129 & t128);
    t131 = (~(t126));
    t132 = (~(t130));
    t133 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t133 & t131);
    t134 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t134 & t132);
    goto LAB12;

LAB13:    t157 = *((unsigned int *)t145);
    t158 = *((unsigned int *)t151);
    *((unsigned int *)t145) = (t157 | t158);
    t159 = (t107 + 4);
    t160 = (t135 + 4);
    t161 = *((unsigned int *)t159);
    t162 = (~(t161));
    t163 = *((unsigned int *)t107);
    t164 = (t163 & t162);
    t165 = *((unsigned int *)t160);
    t166 = (~(t165));
    t167 = *((unsigned int *)t135);
    t168 = (t167 & t166);
    t169 = (~(t164));
    t170 = (~(t168));
    t171 = *((unsigned int *)t151);
    *((unsigned int *)t151) = (t171 & t169);
    t172 = *((unsigned int *)t151);
    *((unsigned int *)t151) = (t172 & t170);
    goto LAB15;

}

static void implSig1_execute(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    t2 = (t0 + 1208U);
    t7 = *((char **)t2);
    t2 = (t0 + 1048U);
    t8 = *((char **)t2);
    xsi_vlogtype_concat(t3, 45, 45, 5U, t8, 9, t7, 9, t6, 9, t5, 9, t4, 9);
    t2 = (t0 + 4056);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    xsi_vlog_bit_copy(t12, 0, t3, 0, 45);
    xsi_driver_vfirst_trans(t2, 0, 44);
    t13 = (t0 + 3912);
    *((int *)t13) = 1;

LAB1:    return;
}


extern void work_m_00000000002393624983_2296955800_init()
{
	static char *pe[] = {(void *)Cont_191_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000002393624983_2296955800", "isim/GameState_TB_isim_beh.exe.sim/work/m_00000000002393624983_2296955800.didat");
	xsi_register_executes(pe);
}
