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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/zjdxzn/lab13/SEGP2S_sim/SEGP2S_sim2.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {14, 0};
static int ng4[] = {8, 0};
static int ng5[] = {7, 0};
static int ng6[] = {5, 0};
static int ng7[] = {2, 0};
static int ng8[] = {3, 0};
static int ng9[] = {15, 0};



static void Initial_52_0(char *t0)
{
    char t4[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB4:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(61, ng0);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB13;

LAB1:    return;
LAB5:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB6;

LAB8:    xsi_set_current_line(61, ng0);

LAB10:    xsi_set_current_line(62, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2568);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t22, 32, 1);
    t23 = (t16 + 4);
    t24 = *((unsigned int *)t23);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB7;

LAB11:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB12;

LAB13:    xsi_set_current_line(65, ng0);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB14:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB15:    xsi_set_current_line(65, ng0);

LAB17:    xsi_set_current_line(66, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2568);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t22, 32, 1);
    t23 = (t16 + 4);
    t24 = *((unsigned int *)t23);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB14;

LAB18:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB19;

LAB20:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB21:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB22;

LAB23:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB24;

LAB25:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB26:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB27;

LAB28:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB29:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB30;

LAB31:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB32:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB33;

LAB34:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB35:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB36;

LAB37:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB38:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB39;

LAB40:    xsi_set_current_line(76, ng0);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB41:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(79, ng0);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB51:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(82, ng0);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB61:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(86, ng0);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB71:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB72;

LAB73:    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB81;

LAB82:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 500000LL);
    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB42:    xsi_set_current_line(76, ng0);

LAB44:    xsi_set_current_line(77, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB45;

LAB46:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB45:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB46;

LAB47:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB48;

LAB49:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB48:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB49;

LAB50:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB41;

LAB52:    xsi_set_current_line(79, ng0);

LAB54:    xsi_set_current_line(80, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB55;

LAB56:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB55:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB56;

LAB57:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB58;

LAB59:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB58:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB59;

LAB60:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB51;

LAB62:    xsi_set_current_line(82, ng0);

LAB64:    xsi_set_current_line(83, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB65;

LAB66:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB65:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB66;

LAB67:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB68;

LAB69:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB68:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB69;

LAB70:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB61;

LAB72:    xsi_set_current_line(86, ng0);

LAB74:    xsi_set_current_line(87, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB75;

LAB76:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB75:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB76;

LAB77:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB78;

LAB79:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB78:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB79;

LAB80:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB71;

LAB81:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB82;

LAB83:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB84;

LAB85:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB86;
    goto LAB1;

LAB84:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB85;

LAB86:    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB87;

LAB88:    goto LAB1;

LAB87:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB88;

}

static void Always_95_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);

LAB4:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    goto LAB2;

}


extern void work_m_18329787909453873554_2090221570_init()
{
	static char *pe[] = {(void *)Initial_52_0,(void *)Always_95_1};
	xsi_register_didat("work_m_18329787909453873554_2090221570", "isim/SEGP2S_sim2_isim_beh.exe.sim/work/m_18329787909453873554_2090221570.didat");
	xsi_register_executes(pe);
}
