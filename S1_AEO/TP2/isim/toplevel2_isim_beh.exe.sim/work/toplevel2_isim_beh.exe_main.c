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

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *STD_TEXTIO;
char *UNISIM_P_3222816464;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;


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
    unisim_p_3222816464_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_0128330363_2584565154_init();
    unisim_a_1490675510_1976025627_init();
    work_a_0141943142_0912031422_init();
    work_a_3527255411_3212880686_init();
    work_a_1003876877_3212880686_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_0118100819_2639897040_init();
    work_a_3780701481_3212880686_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    unisim_a_2312877582_0635394241_init();
    work_a_4178486325_3212880686_init();
    unisim_a_3828308815_1222000726_init();
    work_a_3577743178_3212880686_init();
    work_a_3170103710_0821725193_init();
    work_a_3373899859_3212880686_init();
    work_a_1565669756_3212880686_init();
    work_a_1130132970_3212880686_init();
    work_a_1497406067_3212880686_init();
    work_a_3593149665_3212880686_init();
    work_a_2081678090_0638189063_init();
    work_a_0840108855_2151524466_init();
    work_a_3184593131_3077071699_init();
    unisim_a_3870564484_3219970547_init();
    work_a_1746031951_3212880686_init();
    work_a_4239010862_3212880686_init();
    work_a_3413963266_3212880686_init();


    xsi_register_tops("work_a_3413963266_3212880686");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
