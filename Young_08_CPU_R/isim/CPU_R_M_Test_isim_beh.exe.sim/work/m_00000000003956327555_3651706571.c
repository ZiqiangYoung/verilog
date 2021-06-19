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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vmware-host/Shared Folders/WorkSpace/Verilog/Young_08_CPU_R/MultifunctionalALU_32bit_M.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static int ng8[] = {0, 0};
static unsigned int ng9[] = {1U, 1U};



static void Cont_31_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 33, t3, 32, t4, 32);
    t2 = (t0 + 4784);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 33);
    xsi_driver_vfirst_trans(t2, 0, 32);
    t10 = (t0 + 4640);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_32_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_minus(t5, 33, t3, 32, t4, 32);
    t2 = (t0 + 4848);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 33);
    xsi_driver_vfirst_trans(t2, 0, 32);
    t10 = (t0 + 4656);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_34_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t71[8];
    char t72[8];
    char t75[8];
    char t105[8];
    char t136[8];
    char t137[8];
    char t140[8];
    char t170[8];
    char t187[8];
    char t188[8];
    char t191[8];
    char t218[8];
    char t222[8];
    char t263[8];
    char t264[8];
    char t267[8];
    char t294[8];
    char t308[8];
    char t309[8];
    char t312[8];
    char t339[8];
    char t353[8];
    char t354[8];
    char t357[8];
    char t387[8];
    char t397[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t73;
    char *t74;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    char *t104;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t138;
    char *t139;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t168;
    char *t169;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    char *t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t189;
    char *t190;
    char *t192;
    char *t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    char *t206;
    char *t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t213;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    char *t219;
    char *t220;
    char *t221;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    char *t226;
    char *t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    char *t235;
    char *t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    char *t249;
    char *t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    char *t265;
    char *t266;
    char *t268;
    char *t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    char *t282;
    char *t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    char *t289;
    char *t290;
    unsigned int t291;
    unsigned int t292;
    unsigned int t293;
    char *t295;
    char *t296;
    char *t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    unsigned int t307;
    char *t310;
    char *t311;
    char *t313;
    char *t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    unsigned int t319;
    unsigned int t320;
    unsigned int t321;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    unsigned int t326;
    char *t327;
    char *t328;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    char *t334;
    char *t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    char *t340;
    char *t341;
    char *t342;
    unsigned int t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    char *t355;
    char *t356;
    char *t358;
    char *t359;
    unsigned int t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    unsigned int t368;
    unsigned int t369;
    unsigned int t370;
    unsigned int t371;
    char *t372;
    char *t373;
    unsigned int t374;
    unsigned int t375;
    unsigned int t376;
    unsigned int t377;
    unsigned int t378;
    char *t379;
    char *t380;
    unsigned int t381;
    unsigned int t382;
    unsigned int t383;
    char *t384;
    char *t385;
    char *t386;
    char *t388;
    char *t389;
    unsigned int t390;
    unsigned int t391;
    unsigned int t392;
    unsigned int t393;
    char *t394;
    char *t395;
    char *t396;
    char *t398;
    char *t399;
    char *t400;
    char *t401;
    char *t402;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t67 = *((unsigned int *)t4);
    t68 = (~(t67));
    t69 = *((unsigned int *)t29);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t71, 8);

LAB20:    t394 = (t0 + 4912);
    t398 = (t394 + 56U);
    t399 = *((char **)t398);
    t400 = (t399 + 56U);
    t401 = *((char **)t400);
    memcpy(t401, t3, 8);
    xsi_driver_vfirst_trans(t394, 0, 31);
    t402 = (t0 + 4672);
    *((int *)t402) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    t33 = (t0 + 1208U);
    t35 = *((char **)t33);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t33 = (t34 + 4);
    t40 = (t35 + 4);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB13;

LAB14:    t73 = (t0 + 1368U);
    t74 = *((char **)t73);
    t73 = ((char*)((ng2)));
    memset(t75, 0, 8);
    t76 = (t74 + 4);
    t77 = (t73 + 4);
    t78 = *((unsigned int *)t74);
    t79 = *((unsigned int *)t73);
    t80 = (t78 ^ t79);
    t81 = *((unsigned int *)t76);
    t82 = *((unsigned int *)t77);
    t83 = (t81 ^ t82);
    t84 = (t80 | t83);
    t85 = *((unsigned int *)t76);
    t86 = *((unsigned int *)t77);
    t87 = (t85 | t86);
    t88 = (~(t87));
    t89 = (t84 & t88);
    if (t89 != 0)
        goto LAB27;

LAB24:    if (t87 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t75) = 1;

LAB27:    memset(t72, 0, 8);
    t91 = (t75 + 4);
    t92 = *((unsigned int *)t91);
    t93 = (~(t92));
    t94 = *((unsigned int *)t75);
    t95 = (t94 & t93);
    t96 = (t95 & 1U);
    if (t96 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t91) != 0)
        goto LAB30;

LAB31:    t98 = (t72 + 4);
    t99 = *((unsigned int *)t72);
    t100 = *((unsigned int *)t98);
    t101 = (t99 || t100);
    if (t101 > 0)
        goto LAB32;

LAB33:    t132 = *((unsigned int *)t72);
    t133 = (~(t132));
    t134 = *((unsigned int *)t98);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t98) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t72) > 0)
        goto LAB38;

LAB39:    memcpy(t71, t136, 8);

LAB40:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t71, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB21:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t36) = (t47 | t48);
    t49 = (t34 + 4);
    t50 = (t35 + 4);
    t51 = *((unsigned int *)t34);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t35);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t65 & t61);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    goto LAB23;

LAB26:    t90 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t72) = 1;
    goto LAB31;

LAB30:    t97 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB31;

LAB32:    t102 = (t0 + 1048U);
    t103 = *((char **)t102);
    t102 = (t0 + 1208U);
    t104 = *((char **)t102);
    t106 = *((unsigned int *)t103);
    t107 = *((unsigned int *)t104);
    t108 = (t106 | t107);
    *((unsigned int *)t105) = t108;
    t102 = (t103 + 4);
    t109 = (t104 + 4);
    t110 = (t105 + 4);
    t111 = *((unsigned int *)t102);
    t112 = *((unsigned int *)t109);
    t113 = (t111 | t112);
    *((unsigned int *)t110) = t113;
    t114 = *((unsigned int *)t110);
    t115 = (t114 != 0);
    if (t115 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB33;

LAB34:    t138 = (t0 + 1368U);
    t139 = *((char **)t138);
    t138 = ((char*)((ng3)));
    memset(t140, 0, 8);
    t141 = (t139 + 4);
    t142 = (t138 + 4);
    t143 = *((unsigned int *)t139);
    t144 = *((unsigned int *)t138);
    t145 = (t143 ^ t144);
    t146 = *((unsigned int *)t141);
    t147 = *((unsigned int *)t142);
    t148 = (t146 ^ t147);
    t149 = (t145 | t148);
    t150 = *((unsigned int *)t141);
    t151 = *((unsigned int *)t142);
    t152 = (t150 | t151);
    t153 = (~(t152));
    t154 = (t149 & t153);
    if (t154 != 0)
        goto LAB47;

LAB44:    if (t152 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t140) = 1;

LAB47:    memset(t137, 0, 8);
    t156 = (t140 + 4);
    t157 = *((unsigned int *)t156);
    t158 = (~(t157));
    t159 = *((unsigned int *)t140);
    t160 = (t159 & t158);
    t161 = (t160 & 1U);
    if (t161 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t156) != 0)
        goto LAB50;

LAB51:    t163 = (t137 + 4);
    t164 = *((unsigned int *)t137);
    t165 = *((unsigned int *)t163);
    t166 = (t164 || t165);
    if (t166 > 0)
        goto LAB52;

LAB53:    t183 = *((unsigned int *)t137);
    t184 = (~(t183));
    t185 = *((unsigned int *)t163);
    t186 = (t184 || t185);
    if (t186 > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t163) > 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t137) > 0)
        goto LAB58;

LAB59:    memcpy(t136, t187, 8);

LAB60:    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t71, 32, t105, 32, t136, 32);
    goto LAB40;

LAB38:    memcpy(t71, t105, 8);
    goto LAB40;

LAB41:    t116 = *((unsigned int *)t105);
    t117 = *((unsigned int *)t110);
    *((unsigned int *)t105) = (t116 | t117);
    t118 = (t103 + 4);
    t119 = (t104 + 4);
    t120 = *((unsigned int *)t118);
    t121 = (~(t120));
    t122 = *((unsigned int *)t103);
    t123 = (t122 & t121);
    t124 = *((unsigned int *)t119);
    t125 = (~(t124));
    t126 = *((unsigned int *)t104);
    t127 = (t126 & t125);
    t128 = (~(t123));
    t129 = (~(t127));
    t130 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t130 & t128);
    t131 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t131 & t129);
    goto LAB43;

LAB46:    t155 = (t140 + 4);
    *((unsigned int *)t140) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB47;

LAB48:    *((unsigned int *)t137) = 1;
    goto LAB51;

LAB50:    t162 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB51;

LAB52:    t167 = (t0 + 1048U);
    t168 = *((char **)t167);
    t167 = (t0 + 1208U);
    t169 = *((char **)t167);
    t171 = *((unsigned int *)t168);
    t172 = *((unsigned int *)t169);
    t173 = (t171 ^ t172);
    *((unsigned int *)t170) = t173;
    t167 = (t168 + 4);
    t174 = (t169 + 4);
    t175 = (t170 + 4);
    t176 = *((unsigned int *)t167);
    t177 = *((unsigned int *)t174);
    t178 = (t176 | t177);
    *((unsigned int *)t175) = t178;
    t179 = *((unsigned int *)t175);
    t180 = (t179 != 0);
    if (t180 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB53;

LAB54:    t189 = (t0 + 1368U);
    t190 = *((char **)t189);
    t189 = ((char*)((ng4)));
    memset(t191, 0, 8);
    t192 = (t190 + 4);
    t193 = (t189 + 4);
    t194 = *((unsigned int *)t190);
    t195 = *((unsigned int *)t189);
    t196 = (t194 ^ t195);
    t197 = *((unsigned int *)t192);
    t198 = *((unsigned int *)t193);
    t199 = (t197 ^ t198);
    t200 = (t196 | t199);
    t201 = *((unsigned int *)t192);
    t202 = *((unsigned int *)t193);
    t203 = (t201 | t202);
    t204 = (~(t203));
    t205 = (t200 & t204);
    if (t205 != 0)
        goto LAB67;

LAB64:    if (t203 != 0)
        goto LAB66;

LAB65:    *((unsigned int *)t191) = 1;

LAB67:    memset(t188, 0, 8);
    t207 = (t191 + 4);
    t208 = *((unsigned int *)t207);
    t209 = (~(t208));
    t210 = *((unsigned int *)t191);
    t211 = (t210 & t209);
    t212 = (t211 & 1U);
    if (t212 != 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t207) != 0)
        goto LAB70;

LAB71:    t214 = (t188 + 4);
    t215 = *((unsigned int *)t188);
    t216 = *((unsigned int *)t214);
    t217 = (t215 || t216);
    if (t217 > 0)
        goto LAB72;

LAB73:    t259 = *((unsigned int *)t188);
    t260 = (~(t259));
    t261 = *((unsigned int *)t214);
    t262 = (t260 || t261);
    if (t262 > 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t214) > 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t188) > 0)
        goto LAB78;

LAB79:    memcpy(t187, t263, 8);

LAB80:    goto LAB55;

LAB56:    xsi_vlog_unsigned_bit_combine(t136, 32, t170, 32, t187, 32);
    goto LAB60;

LAB58:    memcpy(t136, t170, 8);
    goto LAB60;

LAB61:    t181 = *((unsigned int *)t170);
    t182 = *((unsigned int *)t175);
    *((unsigned int *)t170) = (t181 | t182);
    goto LAB63;

LAB66:    t206 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t206) = 1;
    goto LAB67;

LAB68:    *((unsigned int *)t188) = 1;
    goto LAB71;

LAB70:    t213 = (t188 + 4);
    *((unsigned int *)t188) = 1;
    *((unsigned int *)t213) = 1;
    goto LAB71;

LAB72:    t219 = (t0 + 1048U);
    t220 = *((char **)t219);
    t219 = (t0 + 1208U);
    t221 = *((char **)t219);
    t223 = *((unsigned int *)t220);
    t224 = *((unsigned int *)t221);
    t225 = (t223 | t224);
    *((unsigned int *)t222) = t225;
    t219 = (t220 + 4);
    t226 = (t221 + 4);
    t227 = (t222 + 4);
    t228 = *((unsigned int *)t219);
    t229 = *((unsigned int *)t226);
    t230 = (t228 | t229);
    *((unsigned int *)t227) = t230;
    t231 = *((unsigned int *)t227);
    t232 = (t231 != 0);
    if (t232 == 1)
        goto LAB81;

LAB82:
LAB83:    memset(t218, 0, 8);
    t249 = (t218 + 4);
    t250 = (t222 + 4);
    t251 = *((unsigned int *)t222);
    t252 = (~(t251));
    *((unsigned int *)t218) = t252;
    *((unsigned int *)t249) = 0;
    if (*((unsigned int *)t250) != 0)
        goto LAB85;

LAB84:    t257 = *((unsigned int *)t218);
    *((unsigned int *)t218) = (t257 & 4294967295U);
    t258 = *((unsigned int *)t249);
    *((unsigned int *)t249) = (t258 & 4294967295U);
    goto LAB73;

LAB74:    t265 = (t0 + 1368U);
    t266 = *((char **)t265);
    t265 = ((char*)((ng5)));
    memset(t267, 0, 8);
    t268 = (t266 + 4);
    t269 = (t265 + 4);
    t270 = *((unsigned int *)t266);
    t271 = *((unsigned int *)t265);
    t272 = (t270 ^ t271);
    t273 = *((unsigned int *)t268);
    t274 = *((unsigned int *)t269);
    t275 = (t273 ^ t274);
    t276 = (t272 | t275);
    t277 = *((unsigned int *)t268);
    t278 = *((unsigned int *)t269);
    t279 = (t277 | t278);
    t280 = (~(t279));
    t281 = (t276 & t280);
    if (t281 != 0)
        goto LAB89;

LAB86:    if (t279 != 0)
        goto LAB88;

LAB87:    *((unsigned int *)t267) = 1;

LAB89:    memset(t264, 0, 8);
    t283 = (t267 + 4);
    t284 = *((unsigned int *)t283);
    t285 = (~(t284));
    t286 = *((unsigned int *)t267);
    t287 = (t286 & t285);
    t288 = (t287 & 1U);
    if (t288 != 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t283) != 0)
        goto LAB92;

LAB93:    t290 = (t264 + 4);
    t291 = *((unsigned int *)t264);
    t292 = *((unsigned int *)t290);
    t293 = (t291 || t292);
    if (t293 > 0)
        goto LAB94;

LAB95:    t304 = *((unsigned int *)t264);
    t305 = (~(t304));
    t306 = *((unsigned int *)t290);
    t307 = (t305 || t306);
    if (t307 > 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t290) > 0)
        goto LAB98;

LAB99:    if (*((unsigned int *)t264) > 0)
        goto LAB100;

LAB101:    memcpy(t263, t308, 8);

LAB102:    goto LAB75;

LAB76:    xsi_vlog_unsigned_bit_combine(t187, 32, t218, 32, t263, 32);
    goto LAB80;

LAB78:    memcpy(t187, t218, 8);
    goto LAB80;

LAB81:    t233 = *((unsigned int *)t222);
    t234 = *((unsigned int *)t227);
    *((unsigned int *)t222) = (t233 | t234);
    t235 = (t220 + 4);
    t236 = (t221 + 4);
    t237 = *((unsigned int *)t235);
    t238 = (~(t237));
    t239 = *((unsigned int *)t220);
    t240 = (t239 & t238);
    t241 = *((unsigned int *)t236);
    t242 = (~(t241));
    t243 = *((unsigned int *)t221);
    t244 = (t243 & t242);
    t245 = (~(t240));
    t246 = (~(t244));
    t247 = *((unsigned int *)t227);
    *((unsigned int *)t227) = (t247 & t245);
    t248 = *((unsigned int *)t227);
    *((unsigned int *)t227) = (t248 & t246);
    goto LAB83;

LAB85:    t253 = *((unsigned int *)t218);
    t254 = *((unsigned int *)t250);
    *((unsigned int *)t218) = (t253 | t254);
    t255 = *((unsigned int *)t249);
    t256 = *((unsigned int *)t250);
    *((unsigned int *)t249) = (t255 | t256);
    goto LAB84;

LAB88:    t282 = (t267 + 4);
    *((unsigned int *)t267) = 1;
    *((unsigned int *)t282) = 1;
    goto LAB89;

LAB90:    *((unsigned int *)t264) = 1;
    goto LAB93;

LAB92:    t289 = (t264 + 4);
    *((unsigned int *)t264) = 1;
    *((unsigned int *)t289) = 1;
    goto LAB93;

LAB94:    t295 = (t0 + 2008U);
    t296 = *((char **)t295);
    memset(t294, 0, 8);
    t295 = (t294 + 4);
    t297 = (t296 + 4);
    t298 = *((unsigned int *)t296);
    t299 = (t298 >> 0);
    *((unsigned int *)t294) = t299;
    t300 = *((unsigned int *)t297);
    t301 = (t300 >> 0);
    *((unsigned int *)t295) = t301;
    t302 = *((unsigned int *)t294);
    *((unsigned int *)t294) = (t302 & 4294967295U);
    t303 = *((unsigned int *)t295);
    *((unsigned int *)t295) = (t303 & 4294967295U);
    goto LAB95;

LAB96:    t310 = (t0 + 1368U);
    t311 = *((char **)t310);
    t310 = ((char*)((ng6)));
    memset(t312, 0, 8);
    t313 = (t311 + 4);
    t314 = (t310 + 4);
    t315 = *((unsigned int *)t311);
    t316 = *((unsigned int *)t310);
    t317 = (t315 ^ t316);
    t318 = *((unsigned int *)t313);
    t319 = *((unsigned int *)t314);
    t320 = (t318 ^ t319);
    t321 = (t317 | t320);
    t322 = *((unsigned int *)t313);
    t323 = *((unsigned int *)t314);
    t324 = (t322 | t323);
    t325 = (~(t324));
    t326 = (t321 & t325);
    if (t326 != 0)
        goto LAB106;

LAB103:    if (t324 != 0)
        goto LAB105;

LAB104:    *((unsigned int *)t312) = 1;

LAB106:    memset(t309, 0, 8);
    t328 = (t312 + 4);
    t329 = *((unsigned int *)t328);
    t330 = (~(t329));
    t331 = *((unsigned int *)t312);
    t332 = (t331 & t330);
    t333 = (t332 & 1U);
    if (t333 != 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t328) != 0)
        goto LAB109;

LAB110:    t335 = (t309 + 4);
    t336 = *((unsigned int *)t309);
    t337 = *((unsigned int *)t335);
    t338 = (t336 || t337);
    if (t338 > 0)
        goto LAB111;

LAB112:    t349 = *((unsigned int *)t309);
    t350 = (~(t349));
    t351 = *((unsigned int *)t335);
    t352 = (t350 || t351);
    if (t352 > 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t335) > 0)
        goto LAB115;

LAB116:    if (*((unsigned int *)t309) > 0)
        goto LAB117;

LAB118:    memcpy(t308, t353, 8);

LAB119:    goto LAB97;

LAB98:    xsi_vlog_unsigned_bit_combine(t263, 32, t294, 32, t308, 32);
    goto LAB102;

LAB100:    memcpy(t263, t294, 8);
    goto LAB102;

LAB105:    t327 = (t312 + 4);
    *((unsigned int *)t312) = 1;
    *((unsigned int *)t327) = 1;
    goto LAB106;

LAB107:    *((unsigned int *)t309) = 1;
    goto LAB110;

LAB109:    t334 = (t309 + 4);
    *((unsigned int *)t309) = 1;
    *((unsigned int *)t334) = 1;
    goto LAB110;

LAB111:    t340 = (t0 + 2168U);
    t341 = *((char **)t340);
    memset(t339, 0, 8);
    t340 = (t339 + 4);
    t342 = (t341 + 4);
    t343 = *((unsigned int *)t341);
    t344 = (t343 >> 0);
    *((unsigned int *)t339) = t344;
    t345 = *((unsigned int *)t342);
    t346 = (t345 >> 0);
    *((unsigned int *)t340) = t346;
    t347 = *((unsigned int *)t339);
    *((unsigned int *)t339) = (t347 & 4294967295U);
    t348 = *((unsigned int *)t340);
    *((unsigned int *)t340) = (t348 & 4294967295U);
    goto LAB112;

LAB113:    t355 = (t0 + 1368U);
    t356 = *((char **)t355);
    t355 = ((char*)((ng7)));
    memset(t357, 0, 8);
    t358 = (t356 + 4);
    t359 = (t355 + 4);
    t360 = *((unsigned int *)t356);
    t361 = *((unsigned int *)t355);
    t362 = (t360 ^ t361);
    t363 = *((unsigned int *)t358);
    t364 = *((unsigned int *)t359);
    t365 = (t363 ^ t364);
    t366 = (t362 | t365);
    t367 = *((unsigned int *)t358);
    t368 = *((unsigned int *)t359);
    t369 = (t367 | t368);
    t370 = (~(t369));
    t371 = (t366 & t370);
    if (t371 != 0)
        goto LAB123;

LAB120:    if (t369 != 0)
        goto LAB122;

LAB121:    *((unsigned int *)t357) = 1;

LAB123:    memset(t354, 0, 8);
    t373 = (t357 + 4);
    t374 = *((unsigned int *)t373);
    t375 = (~(t374));
    t376 = *((unsigned int *)t357);
    t377 = (t376 & t375);
    t378 = (t377 & 1U);
    if (t378 != 0)
        goto LAB124;

LAB125:    if (*((unsigned int *)t373) != 0)
        goto LAB126;

LAB127:    t380 = (t354 + 4);
    t381 = *((unsigned int *)t354);
    t382 = *((unsigned int *)t380);
    t383 = (t381 || t382);
    if (t383 > 0)
        goto LAB128;

LAB129:    t390 = *((unsigned int *)t354);
    t391 = (~(t390));
    t392 = *((unsigned int *)t380);
    t393 = (t391 || t392);
    if (t393 > 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t380) > 0)
        goto LAB132;

LAB133:    if (*((unsigned int *)t354) > 0)
        goto LAB134;

LAB135:    memcpy(t353, t397, 8);

LAB136:    goto LAB114;

LAB115:    xsi_vlog_unsigned_bit_combine(t308, 32, t339, 32, t353, 32);
    goto LAB119;

LAB117:    memcpy(t308, t339, 8);
    goto LAB119;

LAB122:    t372 = (t357 + 4);
    *((unsigned int *)t357) = 1;
    *((unsigned int *)t372) = 1;
    goto LAB123;

LAB124:    *((unsigned int *)t354) = 1;
    goto LAB127;

LAB126:    t379 = (t354 + 4);
    *((unsigned int *)t354) = 1;
    *((unsigned int *)t379) = 1;
    goto LAB127;

LAB128:    t384 = (t0 + 1048U);
    t385 = *((char **)t384);
    t384 = (t0 + 1208U);
    t386 = *((char **)t384);
    memset(t387, 0, 8);
    t384 = (t385 + 4);
    if (*((unsigned int *)t384) != 0)
        goto LAB138;

LAB137:    t388 = (t386 + 4);
    if (*((unsigned int *)t388) != 0)
        goto LAB138;

LAB141:    if (*((unsigned int *)t385) < *((unsigned int *)t386))
        goto LAB139;

LAB140:    goto LAB129;

LAB130:    t394 = (t0 + 1208U);
    t395 = *((char **)t394);
    t394 = (t0 + 1048U);
    t396 = *((char **)t394);
    memset(t397, 0, 8);
    xsi_vlog_unsigned_lshift(t397, 32, t395, 32, t396, 32);
    goto LAB131;

LAB132:    xsi_vlog_unsigned_bit_combine(t353, 32, t387, 32, t397, 32);
    goto LAB136;

LAB134:    memcpy(t353, t387, 8);
    goto LAB136;

LAB138:    t389 = (t387 + 4);
    *((unsigned int *)t387) = 1;
    *((unsigned int *)t389) = 1;
    goto LAB140;

LAB139:    *((unsigned int *)t387) = 1;
    goto LAB140;

}

static void Cont_43_3(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t4) = 1;

LAB7:    t20 = (t0 + 4976);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t4 + 4);
    t28 = *((unsigned int *)t4);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t33 = (t0 + 4688);
    *((int *)t33) = 1;

LAB1:    return;
LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Cont_44_4(char *t0)
{
    char t4[8];
    char t14[8];
    char t22[8];
    char t38[8];
    char t46[8];
    char t60[8];
    char t61[8];
    char t64[8];
    char t93[8];
    char t106[8];
    char t107[8];
    char t110[8];
    char t139[8];
    char t153[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t62;
    char *t63;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t108;
    char *t109;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t138;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    char *t157;
    char *t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t168;
    char *t169;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;

LAB0:    t1 = (t0 + 4320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 30);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 30);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 1208U);
    t13 = *((char **)t12);
    memset(t14, 0, 8);
    t12 = (t14 + 4);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (t16 >> 30);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 >> 30);
    t21 = (t20 & 1);
    *((unsigned int *)t12) = t21;
    t23 = *((unsigned int *)t4);
    t24 = *((unsigned int *)t14);
    t25 = (t23 ^ t24);
    *((unsigned int *)t22) = t25;
    t26 = (t4 + 4);
    t27 = (t14 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 1528U);
    t37 = *((char **)t36);
    memset(t38, 0, 8);
    t36 = (t38 + 4);
    t39 = (t37 + 4);
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 30);
    t42 = (t41 & 1);
    *((unsigned int *)t38) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 >> 30);
    t45 = (t44 & 1);
    *((unsigned int *)t36) = t45;
    t47 = *((unsigned int *)t22);
    t48 = *((unsigned int *)t38);
    t49 = (t47 ^ t48);
    *((unsigned int *)t46) = t49;
    t50 = (t22 + 4);
    t51 = (t38 + 4);
    t52 = (t46 + 4);
    t53 = *((unsigned int *)t50);
    t54 = *((unsigned int *)t51);
    t55 = (t53 | t54);
    *((unsigned int *)t52) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 != 0);
    if (t57 == 1)
        goto LAB7;

LAB8:
LAB9:    t62 = (t0 + 1368U);
    t63 = *((char **)t62);
    t62 = ((char*)((ng5)));
    memset(t64, 0, 8);
    t65 = (t63 + 4);
    t66 = (t62 + 4);
    t67 = *((unsigned int *)t63);
    t68 = *((unsigned int *)t62);
    t69 = (t67 ^ t68);
    t70 = *((unsigned int *)t65);
    t71 = *((unsigned int *)t66);
    t72 = (t70 ^ t71);
    t73 = (t69 | t72);
    t74 = *((unsigned int *)t65);
    t75 = *((unsigned int *)t66);
    t76 = (t74 | t75);
    t77 = (~(t76));
    t78 = (t73 & t77);
    if (t78 != 0)
        goto LAB13;

LAB10:    if (t76 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t64) = 1;

LAB13:    memset(t61, 0, 8);
    t80 = (t64 + 4);
    t81 = *((unsigned int *)t80);
    t82 = (~(t81));
    t83 = *((unsigned int *)t64);
    t84 = (t83 & t82);
    t85 = (t84 & 1U);
    if (t85 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t80) != 0)
        goto LAB16;

LAB17:    t87 = (t61 + 4);
    t88 = *((unsigned int *)t61);
    t89 = *((unsigned int *)t87);
    t90 = (t88 || t89);
    if (t90 > 0)
        goto LAB18;

LAB19:    t102 = *((unsigned int *)t61);
    t103 = (~(t102));
    t104 = *((unsigned int *)t87);
    t105 = (t103 || t104);
    if (t105 > 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t87) > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t61) > 0)
        goto LAB24;

LAB25:    memcpy(t60, t106, 8);

LAB26:    t154 = *((unsigned int *)t46);
    t155 = *((unsigned int *)t60);
    t156 = (t154 ^ t155);
    *((unsigned int *)t153) = t156;
    t157 = (t46 + 4);
    t158 = (t60 + 4);
    t159 = (t153 + 4);
    t160 = *((unsigned int *)t157);
    t161 = *((unsigned int *)t158);
    t162 = (t160 | t161);
    *((unsigned int *)t159) = t162;
    t163 = *((unsigned int *)t159);
    t164 = (t163 != 0);
    if (t164 == 1)
        goto LAB44;

LAB45:
LAB46:    t167 = (t0 + 5040);
    t168 = (t167 + 56U);
    t169 = *((char **)t168);
    t170 = (t169 + 56U);
    t171 = *((char **)t170);
    memset(t171, 0, 8);
    t172 = 1U;
    t173 = t172;
    t174 = (t153 + 4);
    t175 = *((unsigned int *)t153);
    t172 = (t172 & t175);
    t176 = *((unsigned int *)t174);
    t173 = (t173 & t176);
    t177 = (t171 + 4);
    t178 = *((unsigned int *)t171);
    *((unsigned int *)t171) = (t178 | t172);
    t179 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t179 | t173);
    xsi_driver_vfirst_trans(t167, 0, 0);
    t180 = (t0 + 4704);
    *((int *)t180) = 1;

LAB1:    return;
LAB4:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    goto LAB6;

LAB7:    t58 = *((unsigned int *)t46);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t46) = (t58 | t59);
    goto LAB9;

LAB12:    t79 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB13;

LAB14:    *((unsigned int *)t61) = 1;
    goto LAB17;

LAB16:    t86 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t86) = 1;
    goto LAB17;

LAB18:    t91 = (t0 + 2008U);
    t92 = *((char **)t91);
    memset(t93, 0, 8);
    t91 = (t93 + 4);
    t94 = (t92 + 8);
    t95 = (t92 + 12);
    t96 = *((unsigned int *)t94);
    t97 = (t96 >> 0);
    t98 = (t97 & 1);
    *((unsigned int *)t93) = t98;
    t99 = *((unsigned int *)t95);
    t100 = (t99 >> 0);
    t101 = (t100 & 1);
    *((unsigned int *)t91) = t101;
    goto LAB19;

LAB20:    t108 = (t0 + 1368U);
    t109 = *((char **)t108);
    t108 = ((char*)((ng6)));
    memset(t110, 0, 8);
    t111 = (t109 + 4);
    t112 = (t108 + 4);
    t113 = *((unsigned int *)t109);
    t114 = *((unsigned int *)t108);
    t115 = (t113 ^ t114);
    t116 = *((unsigned int *)t111);
    t117 = *((unsigned int *)t112);
    t118 = (t116 ^ t117);
    t119 = (t115 | t118);
    t120 = *((unsigned int *)t111);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    t123 = (~(t122));
    t124 = (t119 & t123);
    if (t124 != 0)
        goto LAB30;

LAB27:    if (t122 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t110) = 1;

LAB30:    memset(t107, 0, 8);
    t126 = (t110 + 4);
    t127 = *((unsigned int *)t126);
    t128 = (~(t127));
    t129 = *((unsigned int *)t110);
    t130 = (t129 & t128);
    t131 = (t130 & 1U);
    if (t131 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t126) != 0)
        goto LAB33;

LAB34:    t133 = (t107 + 4);
    t134 = *((unsigned int *)t107);
    t135 = *((unsigned int *)t133);
    t136 = (t134 || t135);
    if (t136 > 0)
        goto LAB35;

LAB36:    t148 = *((unsigned int *)t107);
    t149 = (~(t148));
    t150 = *((unsigned int *)t133);
    t151 = (t149 || t150);
    if (t151 > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t133) > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t107) > 0)
        goto LAB41;

LAB42:    memcpy(t106, t152, 8);

LAB43:    goto LAB21;

LAB22:    xsi_vlog_unsigned_bit_combine(t60, 1, t93, 1, t106, 1);
    goto LAB26;

LAB24:    memcpy(t60, t93, 8);
    goto LAB26;

LAB29:    t125 = (t110 + 4);
    *((unsigned int *)t110) = 1;
    *((unsigned int *)t125) = 1;
    goto LAB30;

LAB31:    *((unsigned int *)t107) = 1;
    goto LAB34;

LAB33:    t132 = (t107 + 4);
    *((unsigned int *)t107) = 1;
    *((unsigned int *)t132) = 1;
    goto LAB34;

LAB35:    t137 = (t0 + 2168U);
    t138 = *((char **)t137);
    memset(t139, 0, 8);
    t137 = (t139 + 4);
    t140 = (t138 + 8);
    t141 = (t138 + 12);
    t142 = *((unsigned int *)t140);
    t143 = (t142 >> 0);
    t144 = (t143 & 1);
    *((unsigned int *)t139) = t144;
    t145 = *((unsigned int *)t141);
    t146 = (t145 >> 0);
    t147 = (t146 & 1);
    *((unsigned int *)t137) = t147;
    goto LAB36;

LAB37:    t152 = ((char*)((ng9)));
    goto LAB38;

LAB39:    xsi_vlog_unsigned_bit_combine(t106, 1, t139, 1, t152, 1);
    goto LAB43;

LAB41:    memcpy(t106, t139, 8);
    goto LAB43;

LAB44:    t165 = *((unsigned int *)t153);
    t166 = *((unsigned int *)t159);
    *((unsigned int *)t153) = (t165 | t166);
    goto LAB46;

}


extern void work_m_00000000003956327555_3651706571_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Cont_32_1,(void *)Cont_34_2,(void *)Cont_43_3,(void *)Cont_44_4};
	xsi_register_didat("work_m_00000000003956327555_3651706571", "isim/CPU_R_M_Test_isim_beh.exe.sim/work/m_00000000003956327555_3651706571.didat");
	xsi_register_executes(pe);
}
