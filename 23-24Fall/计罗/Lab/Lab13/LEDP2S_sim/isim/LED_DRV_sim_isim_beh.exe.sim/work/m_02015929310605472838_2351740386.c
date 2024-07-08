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
static const char *ng0 = "/home/proton/Lab/Lab13/LEDP2S_sim/LED_DRV_sim.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {14, 0};
static int ng4[] = {4, 0};
static int ng5[] = {3, 0};
static int ng6[] = {2, 0};
static int ng7[] = {15, 0};



static void Initial_24_0(char *t0)
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

LAB2:    xsi_set_current_line(24, ng0);

LAB4:    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(29, ng0);
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
        goto LAB6;

LAB7:    xsi_set_current_line(30, ng0);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB8:    t2 = (t0 + 2568);
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
        goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB7;

LAB9:    xsi_set_current_line(31, ng0);

LAB11:    xsi_set_current_line(32, ng0);
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
        goto LAB12;

LAB13:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB8;

LAB12:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB13;

LAB14:    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB15:    t2 = (t0 + 2568);
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
        goto LAB16;

LAB17:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB16:    xsi_set_current_line(36, ng0);

LAB18:    xsi_set_current_line(37, ng0);
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
        goto LAB19;

LAB20:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB15;

LAB19:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB20;

LAB21:    xsi_set_current_line(41, ng0);
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
        goto LAB22;

LAB23:    xsi_set_current_line(42, ng0);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB24:    t2 = (t0 + 2568);
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
        goto LAB25;

LAB26:    xsi_set_current_line(47, ng0);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB34:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t12 = (~(t10));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(52, ng0);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB44:    t2 = (t0 + 2568);
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
        goto LAB45;

LAB46:    xsi_set_current_line(57, ng0);
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
        goto LAB54;

LAB55:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB22:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB23;

LAB25:    xsi_set_current_line(43, ng0);

LAB27:    xsi_set_current_line(44, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB28:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB29;

LAB30:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB31:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB32;

LAB33:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB24;

LAB35:    xsi_set_current_line(48, ng0);

LAB37:    xsi_set_current_line(49, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t24 = *((unsigned int *)t21);
    t11 = (!(t24));
    if (t11 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB38:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB39;

LAB40:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB41:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB42;

LAB43:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB34;

LAB45:    xsi_set_current_line(53, ng0);

LAB47:    xsi_set_current_line(54, ng0);
    t8 = ((char*)((ng1)));
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
        goto LAB48;

LAB49:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB48:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB49;

LAB50:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB51;

LAB52:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB51:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB52;

LAB53:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB44;

LAB54:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB55;

LAB56:    xsi_set_current_line(58, ng0);
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
        goto LAB57;

LAB58:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB57:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB58;

LAB59:    xsi_set_current_line(60, ng0);
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
        goto LAB60;

LAB61:    xsi_set_current_line(61, ng0);
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
        goto LAB62;

LAB63:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB60:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB61;

LAB62:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB63;

LAB64:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB65;

LAB66:    goto LAB1;

LAB65:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB66;

}

static void Always_65_1(char *t0)
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

LAB2:    xsi_set_current_line(65, ng0);

LAB4:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    goto LAB2;

}


extern void work_m_02015929310605472838_2351740386_init()
{
	static char *pe[] = {(void *)Initial_24_0,(void *)Always_65_1};
	xsi_register_didat("work_m_02015929310605472838_2351740386", "isim/LED_DRV_sim_isim_beh.exe.sim/work/m_02015929310605472838_2351740386.didat");
	xsi_register_executes(pe);
}
