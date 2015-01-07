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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;
char *IEEE_P_2717149903;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_0947159679_init();
    work_a_2546587676_3212880686_init();
    work_a_0041652292_3212880686_init();
    work_a_0548005755_2213756369_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1430501046_3212880686_init();
    work_a_3741737743_3212880686_init();
    work_a_1565669756_3212880686_init();
    work_a_2811225320_3212880686_init();
    work_a_1315419030_3212880686_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_0118100819_2639897040_init();
    work_a_2097347532_3212880686_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    work_a_3306851478_3212880686_init();
    work_a_3436103216_3212880686_init();
    unisim_a_2312877582_0635394241_init();
    work_a_3795921498_3212880686_init();
    work_a_1995955789_3212880686_init();
    work_a_2669644083_3212880686_init();
    work_a_0498531477_3212880686_init();
    unisim_p_3222816464_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_1200067876_2584565154_init();
    unisim_a_1490675510_1976025627_init();
    work_a_0141943142_0912031422_init();
    work_a_3082450364_3212880686_init();
    work_a_1584117829_2372691052_init();


    xsi_register_tops("work_a_1584117829_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
