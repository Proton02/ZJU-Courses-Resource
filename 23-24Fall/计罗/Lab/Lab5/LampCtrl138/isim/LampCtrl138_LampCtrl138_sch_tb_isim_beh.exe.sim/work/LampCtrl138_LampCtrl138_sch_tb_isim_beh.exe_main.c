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
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03261540892355984254_3090295908_init();
    unisims_ver_m_02553951401163808816_1565138397_init();
    work_m_13632482628233979132_1540066342_init();
    unisims_ver_m_06312903236042698045_1759035934_init();
    unisims_ver_m_06313320939402315622_1593237687_init();
    unisims_ver_m_00627464630259457011_3274606718_init();
    work_m_08867280741158154992_0777526639_init();
    work_m_16282995377719822411_1320177773_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_16282995377719822411_1320177773");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
