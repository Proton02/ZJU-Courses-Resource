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
static const char *ng0 = "/home/zjdxzn/lab13/SEGP2S/SEGP2S_sim.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {14, 0};
static int ng4[] = {8, 0};
static int ng5[] = {7, 0};
static int ng6[] = {5, 0};
static int ng7[] = {2, 0};
static int ng8[] = {3, 0};
static int ng9[] = {15, 0};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {0U, 0U};



static void Initial_51_0(char *t0)
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

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(59, ng0);
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

LAB6:    xsi_set_current_line(60, ng0);
    xsi_set_current_line(60, ng0);
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

LAB9:    xsi_set_current_line(65, ng0);
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

LAB1:    return;
LAB5:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB6;

LAB8:    xsi_set_current_line(60, ng0);

LAB10:    xsi_set_current_line(61, ng0);
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

LAB12:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB11:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB12;

LAB13:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB7;

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
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(71, ng0);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB23:    t2 = (t0 + 2568);
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
        goto LAB24;

LAB25:    xsi_set_current_line(74, ng0);
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

LAB30:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB21:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB22;

LAB24:    xsi_set_current_line(71, ng0);

LAB26:    xsi_set_current_line(72, ng0);
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
        goto LAB27;

LAB28:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB23;

LAB27:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB28;

LAB29:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB30;

LAB31:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng1)));
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
        goto LAB32;

LAB33:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB32:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB33;

LAB34:    xsi_set_current_line(75, ng0);
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
        goto LAB35;

LAB36:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB35:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB36;

LAB37:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng1)));
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
        goto LAB38;

LAB39:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB38:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB39;

LAB40:    xsi_set_current_line(76, ng0);
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

LAB42:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB41:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB42;

LAB43:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng1)));
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
        goto LAB44;

LAB45:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB44:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB45;

LAB46:    xsi_set_current_line(78, ng0);
    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB47:    t2 = (t0 + 2568);
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
        goto LAB48;

LAB49:    xsi_set_current_line(81, ng0);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB57:    t2 = (t0 + 2568);
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
        goto LAB58;

LAB59:    xsi_set_current_line(85, ng0);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB67:    t2 = (t0 + 2568);
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
        goto LAB68;

LAB69:    xsi_set_current_line(89, ng0);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB77:    t2 = (t0 + 2568);
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
        goto LAB78;

LAB79:    xsi_set_current_line(92, ng0);
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
        goto LAB87;

LAB88:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 500000LL);
    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB48:    xsi_set_current_line(78, ng0);

LAB50:    xsi_set_current_line(79, ng0);
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
        goto LAB51;

LAB52:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB51:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB52;

LAB53:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB54;

LAB55:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB54:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB55;

LAB56:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB47;

LAB58:    xsi_set_current_line(81, ng0);

LAB60:    xsi_set_current_line(82, ng0);
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
        goto LAB61;

LAB62:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB61:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB62;

LAB63:    xsi_set_current_line(82, ng0);
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
        goto LAB64;

LAB65:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB64:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB65;

LAB66:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB57;

LAB68:    xsi_set_current_line(85, ng0);

LAB70:    xsi_set_current_line(86, ng0);
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
        goto LAB71;

LAB72:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB73;
    goto LAB1;

LAB71:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB72;

LAB73:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng1)));
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
        goto LAB74;

LAB75:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB74:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB75;

LAB76:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB67;

LAB78:    xsi_set_current_line(89, ng0);

LAB80:    xsi_set_current_line(90, ng0);
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
        goto LAB81;

LAB82:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB81:    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t16), 1);
    goto LAB82;

LAB83:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB84;

LAB85:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 25000LL);
    *((char **)t1) = &&LAB86;
    goto LAB1;

LAB84:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB85;

LAB86:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB77;

LAB87:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB88;

LAB89:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB90;

LAB91:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB92;
    goto LAB1;

LAB90:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB91;

LAB92:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t17 = (t4 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB93;

LAB94:    goto LAB1;

LAB93:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB94;

}

static void Always_97_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);

LAB4:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3536);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    goto LAB2;

}


extern void work_m_04962376463167024434_2775441090_init()
{
	static char *pe[] = {(void *)Initial_51_0,(void *)Always_97_1};
	xsi_register_didat("work_m_04962376463167024434_2775441090", "isim/SEGP2S_sim_isim_beh.exe.sim/work/m_04962376463167024434_2775441090.didat");
	xsi_register_executes(pe);
}
