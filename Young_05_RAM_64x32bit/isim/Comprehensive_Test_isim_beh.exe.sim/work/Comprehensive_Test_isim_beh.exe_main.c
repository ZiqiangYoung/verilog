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
    work_m_00000000002721251275_3651706571_init();
    work_m_00000000000819002078_1720664582_init();
    xilinxcorelib_ver_m_00000000001358910285_1256727229_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000002621774987_3700644502_init();
    xilinxcorelib_ver_m_00000000001603977570_0316210539_init();
    work_m_00000000000403262735_3036770326_init();
    work_m_00000000002433859757_1387879697_init();
    work_m_00000000002735807416_2326369396_init();
    work_m_00000000000131903386_0304318614_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000131903386_0304318614");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
