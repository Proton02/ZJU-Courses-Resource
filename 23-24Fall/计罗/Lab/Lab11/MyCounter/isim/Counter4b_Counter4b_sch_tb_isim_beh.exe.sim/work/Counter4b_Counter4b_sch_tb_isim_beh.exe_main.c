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
    unisims_ver_m_03367362533346577578_2449448540_init();
    unisims_ver_m_16176787317968387356_3476364530_init();
    unisims_ver_m_03261540892355984254_3090295908_init();
    unisims_ver_m_16631666276591928709_2161410271_init();
    unisims_ver_m_01335054121451632449_0643217863_init();
    unisims_ver_m_16269261957556079018_3852734344_init();
    work_m_13720861098512789879_2173740203_init();
    work_m_10819995085895716466_0398647821_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_10819995085895716466_0398647821");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
