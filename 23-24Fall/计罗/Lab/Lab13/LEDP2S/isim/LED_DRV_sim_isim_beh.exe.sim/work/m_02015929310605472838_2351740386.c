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
static const char *ng0 = "/home/zjdxzn/lab13/LEDP2S/LED_DRV_sim.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {14, 0};
static int ng4[] = {3, 0};
static int ng5[] = {2, 0};
static int ng6[] = {4, 0};
static int ng7[] = {15, 0};



static void Initial_51_0(char *t0)
{
    char t4[8];
    char t17[8];
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
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(57, ng0);
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

LAB6:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    t5 = (t0 + 2408);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
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
        goto LAB9;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
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
        goto LAB11;

LAB12:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
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
        goto LAB13;

LAB14:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB6;

LAB7:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB8;

LAB9:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB10;

LAB11:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB12;

LAB13:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB14;

LAB15:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(59, ng0);
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
        goto LAB18;

LAB19:    xsi_set_current_line(59, ng0);
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
        goto LAB20;

LAB21:    xsi_set_current_line(59, ng0);
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
        goto LAB22;

LAB23:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB16:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB23;

LAB24:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB27:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(65, ng0);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB37:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(68, ng0);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB47:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(71, ng0);
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
        goto LAB57;

LAB58:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB25:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB26;

LAB28:    xsi_set_current_line(62, ng0);

LAB30:    xsi_set_current_line(63, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t12 = (t0 + 2408);
    t18 = (t12 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t17, t19, 2, t20, 32, 1);
    t21 = (t17 + 4);
    t22 = *((unsigned int *)t21);
    t11 = (!(t22));
    if (t11 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB31:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t17), 1);
    goto LAB32;

LAB33:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB34:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB35;

LAB36:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB27;

LAB38:    xsi_set_current_line(65, ng0);

LAB40:    xsi_set_current_line(66, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t12 = (t0 + 2408);
    t18 = (t12 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t17, t19, 2, t20, 32, 1);
    t21 = (t17 + 4);
    t22 = *((unsigned int *)t21);
    t11 = (!(t22));
    if (t11 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB41:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t17), 1);
    goto LAB42;

LAB43:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB44;

LAB45:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB44:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB45;

LAB46:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB37;

LAB48:    xsi_set_current_line(68, ng0);

LAB50:    xsi_set_current_line(69, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t12 = (t0 + 2408);
    t18 = (t12 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t17, t19, 2, t20, 32, 1);
    t21 = (t17 + 4);
    t22 = *((unsigned int *)t21);
    t11 = (!(t22));
    if (t11 == 1)
        goto LAB51;

LAB52:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB51:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t17), 1);
    goto LAB52;

LAB53:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB54;

LAB55:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB54:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB55;

LAB56:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB47;

LAB57:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB58;

LAB59:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB60:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB61;

LAB62:    xsi_set_current_line(73, ng0);
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
        goto LAB63;

LAB64:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
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
        goto LAB65;

LAB66:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB63:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB64;

LAB65:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB66;

LAB67:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB68;

LAB69:    goto LAB1;

LAB68:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB69;

}

static void Always_78_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);

LAB4:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    goto LAB2;

}


extern void work_m_02015929310605472838_2351740386_init()
{
	static char *pe[] = {(void *)Initial_51_0,(void *)Always_78_1};
	xsi_register_didat("work_m_02015929310605472838_2351740386", "isim/LED_DRV_sim_isim_beh.exe.sim/work/m_02015929310605472838_2351740386.didat");
	xsi_register_executes(pe);
}
