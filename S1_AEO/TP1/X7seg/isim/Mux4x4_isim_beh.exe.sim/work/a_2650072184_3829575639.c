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

/* This file is designed for use with ISim build 0x141a37e9 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/m1/xuc/Documents/AEO/TP1/X7seg/Mux4x4.vhf";
extern char *IEEE_P_2592010699;



static void work_a_2650072184_3829575639_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    int t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1144U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 2312);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1408U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1408U);
    t2 = *((char **)t1);
    t1 = (t0 + 3653);
    t11 = xsi_mem_cmp(t1, t2, 2U);
    if (t11 == 1)
        goto LAB6;

LAB11:    t7 = (t0 + 3655);
    t12 = xsi_mem_cmp(t7, t2, 2U);
    if (t12 == 1)
        goto LAB7;

LAB12:    t9 = (t0 + 3657);
    t14 = xsi_mem_cmp(t9, t2, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:    t15 = (t0 + 3659);
    t17 = xsi_mem_cmp(t15, t2, 2U);
    if (t17 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(55, ng0);

LAB5:
LAB3:    t1 = (t0 + 2132);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2176);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB6:    xsi_set_current_line(51, ng0);
    t18 = (t0 + 684U);
    t19 = *((char **)t18);
    t3 = *((unsigned char *)t19);
    t18 = (t0 + 2176);
    t20 = (t18 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t3;
    xsi_driver_first_trans_fast_port(t18);
    goto LAB5;

LAB7:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2176);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2176);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2176);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB15:;
}


extern void work_a_2650072184_3829575639_init()
{
	static char *pe[] = {(void *)work_a_2650072184_3829575639_p_0};
	xsi_register_didat("work_a_2650072184_3829575639", "isim/Mux4x4_isim_beh.exe.sim/work/a_2650072184_3829575639.didat");
	xsi_register_executes(pe);
}
