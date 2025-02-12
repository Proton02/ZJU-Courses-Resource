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
    work_m_14633854053653078029_2202260495_init();
    work_m_14754486698083286372_0721988197_init();
    work_m_02196812080571423450_2858095548_init();
    unisims_ver_m_16631666276591928709_3125220529_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03261540892355984254_1323117156_init();
    work_m_15661152304916558690_0846016296_init();
    work_m_02158582261652013547_3851455811_init();
    work_m_04596509123175382474_2866410756_init();
    work_m_03855324689152555614_3683860065_init();
    work_m_18191694624041562103_1353231004_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_18191694624041562103_1353231004");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
