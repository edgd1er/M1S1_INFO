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
static const char *ng0 = "/home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/decodeur3_8.vhd";



static void work_a_2081419719_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 1332U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = (3 - 3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 2716);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB14:    t10 = (t0 + 2719);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB15:    t13 = (t0 + 2722);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB16:    t16 = (t0 + 2725);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB17:    t19 = (t0 + 2728);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB18:    t22 = (t0 + 2731);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB19:    t25 = (t0 + 2734);
    t27 = xsi_mem_cmp(t25, t2, 3U);
    if (t27 == 1)
        goto LAB11;

LAB20:    t28 = (t0 + 2737);
    t30 = xsi_mem_cmp(t28, t2, 3U);
    if (t30 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2804);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(39, ng0);

LAB25:    t2 = (t0 + 1512);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(40, ng0);
    t31 = (t0 + 2740);
    t33 = (t0 + 1556);
    t34 = (t33 + 32U);
    t35 = *((char **)t34);
    t36 = (t35 + 32U);
    t37 = *((char **)t36);
    memcpy(t37, t31, 8U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB4;

LAB6:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2748);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2756);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2764);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2772);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2780);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB11:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2788);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB12:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2796);
    t7 = (t0 + 1556);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    t11 = (t10 + 32U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 1512);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}


extern void work_a_2081419719_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2081419719_3212880686_p_0};
	xsi_register_didat("work_a_2081419719_3212880686", "isim/decodeur3_8_isim_beh.exe.sim/work/a_2081419719_3212880686.didat");
	xsi_register_executes(pe);
}
