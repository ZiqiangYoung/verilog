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
    work_m_00000000002834982225_3991167406_init();
    xilinxcorelib_ver_m_00000000001067635404_4110195803_init();
    work_m_00000000002071050217_3215815279_init();
    work_m_00000000002490042403_1477795688_init();
    work_m_00000000003049446410_2791440120_init();
    work_m_00000000003956327555_3651706571_init();
    work_m_00000000000819002078_1720664582_init();
    work_m_00000000002906680158_2233565370_init();
    work_m_00000000003532551412_1519195245_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003532551412_1519195245");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
