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
static const char *ng0 = "C:/Users/Isaac/Documents/GitHub/CS152A-Lab4-TicTacToe/Game/GameState_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {9, 0};
static const char *ng4 = "X";
static const char *ng5 = "O";
static const char *ng6 = "B";
static int ng7[] = {3, 0};
static const char *ng8 = "\n";
static const char *ng9 = "Game Status: %d";



static void Initial_16_0(char *t0)
{
    char t6[8];
    char t7[8];
    char t23[8];
    char t24[8];
    char t32[8];
    char t72[8];
    char t79[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);

LAB4:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(18, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(19, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(20, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(23, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 250000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(24, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 250000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(28, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(29, ng0);

LAB8:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    memset(t7, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t8) != 0)
        goto LAB11;

LAB12:    t15 = (t7 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t15);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB13;

LAB14:    memcpy(t32, t7, 8);

LAB15:    t64 = (t32 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t32);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t3, 3);
    xsi_set_current_line(41, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB9:    *((unsigned int *)t7) = 1;
    goto LAB12;

LAB11:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB12;

LAB13:    t19 = (t0 + 2728);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng3)));
    memset(t23, 0, 8);
    xsi_vlog_signed_less(t23, 32, t21, 32, t22, 32);
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t23);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t25) != 0)
        goto LAB18;

LAB19:    t33 = *((unsigned int *)t7);
    t34 = *((unsigned int *)t24);
    t35 = (t33 & t34);
    *((unsigned int *)t32) = t35;
    t36 = (t7 + 4);
    t37 = (t24 + 4);
    t38 = (t32 + 4);
    t39 = *((unsigned int *)t36);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB20;

LAB21:
LAB22:    goto LAB15;

LAB16:    *((unsigned int *)t24) = 1;
    goto LAB19;

LAB18:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB19;

LAB20:    t44 = *((unsigned int *)t32);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t32) = (t44 | t45);
    t46 = (t7 + 4);
    t47 = (t24 + 4);
    t48 = *((unsigned int *)t7);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t24);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t62 & t58);
    t63 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t63 & t59);
    goto LAB22;

LAB23:    xsi_set_current_line(30, ng0);

LAB25:    xsi_set_current_line(31, ng0);
    t70 = (t0 + 1048U);
    t71 = *((char **)t70);
    t70 = (t0 + 1008U);
    t73 = (t70 + 72U);
    t74 = *((char **)t73);
    t75 = (t0 + 2568);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    xsi_vlog_generic_get_index_select_value(t72, 32, t71, t74, 2, t77, 32, 1);
    t78 = ((char*)((ng2)));
    memset(t79, 0, 8);
    t80 = (t72 + 4);
    t81 = (t78 + 4);
    t82 = *((unsigned int *)t72);
    t83 = *((unsigned int *)t78);
    t84 = (t82 ^ t83);
    t85 = *((unsigned int *)t80);
    t86 = *((unsigned int *)t81);
    t87 = (t85 ^ t86);
    t88 = (t84 | t87);
    t89 = *((unsigned int *)t80);
    t90 = *((unsigned int *)t81);
    t91 = (t89 | t90);
    t92 = (~(t91));
    t93 = (t88 & t92);
    if (t93 != 0)
        goto LAB29;

LAB26:    if (t91 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t79) = 1;

LAB29:    t95 = (t79 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t79);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1168U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t8 = (t0 + 2568);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t15, 32, 1);
    t19 = ((char*)((ng2)));
    memset(t7, 0, 8);
    t20 = (t6 + 4);
    t21 = (t19 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t19);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t20);
    t13 = *((unsigned int *)t21);
    t16 = (t12 ^ t13);
    t17 = (t11 | t16);
    t18 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t21);
    t27 = (t18 | t26);
    t28 = (~(t27));
    t29 = (t17 & t28);
    if (t29 != 0)
        goto LAB36;

LAB33:    if (t27 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t7) = 1;

LAB36:    t25 = (t7 + 4);
    t30 = *((unsigned int *)t25);
    t33 = (~(t30));
    t34 = *((unsigned int *)t7);
    t35 = (t34 & t33);
    t39 = (t35 != 0);
    if (t39 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(36, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);

LAB39:
LAB32:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    t8 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_signed_mod(t6, 32, t5, 32, t8, 32);
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t6, 32);
    t14 = ((char*)((ng1)));
    memset(t23, 0, 8);
    xsi_vlog_signed_equal(t23, 32, t7, 32, t14, 32);
    t15 = (t23 + 4);
    t9 = *((unsigned int *)t15);
    t10 = (~(t9));
    t11 = *((unsigned int *)t23);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB40;

LAB41:
LAB42:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t8 = (t0 + 2568);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t8 = (t0 + 2728);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 32);
    goto LAB8;

LAB28:    t94 = (t79 + 4);
    *((unsigned int *)t79) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(32, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    goto LAB32;

LAB35:    t22 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(34, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    goto LAB39;

LAB40:    xsi_set_current_line(37, ng0);
    xsi_vlogfile_write(1, 0, 0, ng8, 1, t0);
    goto LAB42;

}

static void Always_44_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3704);
    xsi_process_wait(t2, 3000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2088);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}


extern void work_m_00000000002913870452_3671711236_init()
{
	static char *pe[] = {(void *)Initial_16_0,(void *)Always_44_1};
	xsi_register_didat("work_m_00000000002913870452_3671711236", "isim/tb_isim_beh.exe.sim/work/m_00000000002913870452_3671711236.didat");
	xsi_register_executes(pe);
}
