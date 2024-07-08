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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_15469197826776211918_0709700939_init();
    unisims_ver_m_03367362533346577578_2449448540_init();
    work_m_16543381104035369694_3777530897_init();
    unisims_ver_m_16176787317968387356_0970595058_init();
    work_m_11768346741913866030_3769535672_init();
    work_m_13576206873474925893_0541178208_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_13576206873474925893_0541178208");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
