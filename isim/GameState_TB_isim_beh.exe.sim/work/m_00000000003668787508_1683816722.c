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
static const char *ng0 = "C:/Users/152/Desktop/CS152A-Lab4-TicTacToe/AI.v";
static unsigned int ng1[] = {45U, 0U, 0U, 0U};
static int ng2[] = {1, 0, 0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};



static void NetDecl_69_0(char *t0)
{
    char t3[16];
    char t4[16];
    char t5[16];
    char t11[16];
    char t13[16];
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1184U);
    t6 = *((char **)t2);
    t2 = (t0 + 1144U);
    t7 = (t2 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    t10 = ((char*)((ng2)));
    xsi_vlog_unsigned_minus(t11, 51, t9, 51, t10, 32);
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_get_part_select_value(t5, 44, t6, t8, 2, t11, 51U, 2, t12, 32U, 1);
    xsi_vlogtype_unsigned_bit_neg(t4, 44, t5, 44);
    t14 = (t0 + 1504U);
    t15 = *((char **)t14);
    t14 = (t0 + 1464U);
    t16 = (t14 + 72U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng1)));
    t19 = ((char*)((ng2)));
    xsi_vlog_unsigned_minus(t20, 51, t18, 51, t19, 32);
    t21 = ((char*)((ng3)));
    xsi_vlog_generic_get_part_select_value(t13, 44, t15, t17, 2, t20, 51U, 2, t21, 32U, 1);
    t23 = 0;

LAB7:    t24 = (t23 < 2);
    if (t24 == 1)
        goto LAB8;

LAB9:    t69 = ((char*)((ng4)));
    xsi_vlogtype_concat(t3, 45, 45, 2U, t69, 1, t22, 44);
    t70 = (t0 + 3328);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    xsi_vlog_bit_copy(t74, 0, t3, 0, 45);
    xsi_driver_vfirst_trans_delayed(t70, 0, 44U, 0LL, 0);
    t75 = (t0 + 3232);
    *((int *)t75) = 1;

LAB1:    return;
LAB4:    t44 = (t23 * 8);
    t45 = *((unsigned int *)t28);
    t46 = *((unsigned int *)t38);
    *((unsigned int *)t28) = (t45 | t46);
    t47 = (t4 + t44);
    t48 = (t44 + 4);
    t49 = (t4 + t48);
    t50 = (t13 + t44);
    t51 = (t44 + 4);
    t52 = (t13 + t51);
    t53 = *((unsigned int *)t47);
    t54 = (~(t53));
    t55 = *((unsigned int *)t49);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = *((unsigned int *)t52);
    t60 = (~(t59));
    t61 = (t54 & t56);
    t62 = (t58 & t60);
    t63 = (~(t61));
    t64 = (~(t62));
    t65 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t65 & t63);
    t66 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t66 & t64);
    t67 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t67 & t63);
    t68 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t68 & t64);

LAB6:    t23 = (t23 + 1);
    goto LAB7;

LAB5:    goto LAB6;

LAB8:    t25 = (t23 * 8);
    t26 = (t4 + t25);
    t27 = (t13 + t25);
    t28 = (t22 + t25);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t32 = (t23 * 8);
    t33 = (t32 + 4);
    t34 = (t4 + t33);
    t35 = (t32 + 4);
    t36 = (t13 + t35);
    t37 = (t32 + 4);
    t38 = (t22 + t37);
    t39 = *((unsigned int *)t34);
    t40 = *((unsigned int *)t36);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB4;
    else
        goto LAB5;

}

static void Cont_70_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 2912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = (t0 + 1504U);
    t4 = *((char **)t2);
    t6 = 0;

LAB7:    t7 = (t6 < 2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t51 = (t0 + 3392);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    xsi_vlog_bit_copy(t55, 0, t5, 0, 45);
    xsi_driver_vfirst_trans(t51, 0, 44);
    t56 = (t0 + 3248);
    *((int *)t56) = 1;

LAB1:    return;
LAB4:    t26 = (t6 * 8);
    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t10) = (t27 | t28);
    t29 = (t3 + t26);
    t30 = (t26 + 4);
    t31 = (t3 + t30);
    t32 = (t4 + t26);
    t33 = (t26 + 4);
    t34 = (t4 + t33);
    t35 = *((unsigned int *)t29);
    t36 = (~(t35));
    t37 = *((unsigned int *)t31);
    t38 = (~(t37));
    t39 = *((unsigned int *)t32);
    t40 = (~(t39));
    t41 = *((unsigned int *)t34);
    t42 = (~(t41));
    t43 = (t36 & t38);
    t44 = (t40 & t42);
    t45 = (~(t43));
    t46 = (~(t44));
    t47 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t47 & t45);
    t48 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t48 & t46);
    t49 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t49 & t45);
    t50 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t50 & t46);

LAB6:    t6 = (t6 + 1);
    goto LAB7;

LAB5:    goto LAB6;

LAB8:    t8 = (t6 * 8);
    t2 = (t3 + t8);
    t9 = (t4 + t8);
    t10 = (t5 + t8);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t14 = (t6 * 8);
    t15 = (t14 + 4);
    t16 = (t3 + t15);
    t17 = (t14 + 4);
    t18 = (t4 + t17);
    t19 = (t14 + 4);
    t20 = (t5 + t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t18);
    t23 = (t21 | t22);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB4;
    else
        goto LAB5;

}


extern void work_m_00000000003668787508_1683816722_init()
{
	static char *pe[] = {(void *)NetDecl_69_0,(void *)Cont_70_1};
	xsi_register_didat("work_m_00000000003668787508_1683816722", "isim/GameState_TB_isim_beh.exe.sim/work/m_00000000003668787508_1683816722.didat");
	xsi_register_executes(pe);
}
