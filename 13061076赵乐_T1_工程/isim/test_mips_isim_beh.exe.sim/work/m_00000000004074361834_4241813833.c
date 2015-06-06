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
static const char *ng0 = "C:/Users/dell/Desktop/BUAA2/PROJECT/P5-VerilogHDL-pipeline_CPU-V1/zl-p5/ext.v";
static int ng1[] = {16, 0};
static unsigned int ng2[] = {0U, 0U};



static void Cont_26_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t7[8];
    char t43[8];
    char t44[8];
    char t45[8];
    char t48[8];
    char t84[8];
    char t87[8];
    char t90[8];
    char t102[8];
    char t109[8];
    char *t1;
    char *t2;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t46;
    char *t47;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
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
    char *t85;
    char *t86;
    char *t88;
    char *t89;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    memset(t5, 0, 8);
    t15 = (t7 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t15) == 0)
        goto LAB4;

LAB6:    t21 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t21) = 1;

LAB7:    t22 = (t5 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    *((unsigned int *)t5) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB9;

LAB8:    t30 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t30 & 1U);
    t31 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t31 & 1U);
    memset(t4, 0, 8);
    t32 = (t5 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t5);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t32) != 0)
        goto LAB12;

LAB13:    t39 = (t4 + 4);
    t40 = *((unsigned int *)t4);
    t41 = *((unsigned int *)t39);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB14;

LAB15:    t105 = *((unsigned int *)t4);
    t106 = (~(t105));
    t107 = *((unsigned int *)t39);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t39) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t4) > 0)
        goto LAB20;

LAB21:    memcpy(t3, t109, 8);

LAB22:    t111 = (t0 + 2928);
    t113 = (t111 + 56U);
    t114 = *((char **)t113);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    memcpy(t116, t3, 8);
    xsi_driver_vfirst_trans(t111, 0, 31);
    t117 = (t0 + 2848);
    *((int *)t117) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB9:    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t23);
    *((unsigned int *)t5) = (t26 | t27);
    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    goto LAB8;

LAB10:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t38 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB13;

LAB14:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    memset(t48, 0, 8);
    t46 = (t48 + 4);
    t49 = (t47 + 4);
    t50 = *((unsigned int *)t47);
    t51 = (t50 >> 0);
    t52 = (t51 & 1);
    *((unsigned int *)t48) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 >> 0);
    t55 = (t54 & 1);
    *((unsigned int *)t46) = t55;
    memset(t45, 0, 8);
    t56 = (t48 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t48);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t56) == 0)
        goto LAB23;

LAB25:    t62 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t62) = 1;

LAB26:    t63 = (t45 + 4);
    t64 = (t48 + 4);
    t65 = *((unsigned int *)t48);
    t66 = (~(t65));
    *((unsigned int *)t45) = t66;
    *((unsigned int *)t63) = 0;
    if (*((unsigned int *)t64) != 0)
        goto LAB28;

LAB27:    t71 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t71 & 1U);
    t72 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t72 & 1U);
    memset(t44, 0, 8);
    t73 = (t45 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t45);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t73) != 0)
        goto LAB31;

LAB32:    t80 = (t44 + 4);
    t81 = *((unsigned int *)t44);
    t82 = *((unsigned int *)t80);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB33;

LAB34:    t98 = *((unsigned int *)t44);
    t99 = (~(t98));
    t100 = *((unsigned int *)t80);
    t101 = (t99 || t100);
    if (t101 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t80) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t44) > 0)
        goto LAB39;

LAB40:    memcpy(t43, t102, 8);

LAB41:    goto LAB15;

LAB16:    t110 = ((char*)((ng2)));
    t111 = (t0 + 1208U);
    t112 = *((char **)t111);
    xsi_vlogtype_concat(t109, 32, 32, 2U, t112, 16, t110, 16);
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t3, 32, t43, 32, t109, 32);
    goto LAB22;

LAB20:    memcpy(t3, t43, 8);
    goto LAB22;

LAB23:    *((unsigned int *)t45) = 1;
    goto LAB26;

LAB28:    t67 = *((unsigned int *)t45);
    t68 = *((unsigned int *)t64);
    *((unsigned int *)t45) = (t67 | t68);
    t69 = *((unsigned int *)t63);
    t70 = *((unsigned int *)t64);
    *((unsigned int *)t63) = (t69 | t70);
    goto LAB27;

LAB29:    *((unsigned int *)t44) = 1;
    goto LAB32;

LAB31:    t79 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB32;

LAB33:    t85 = (t0 + 1208U);
    t86 = *((char **)t85);
    t85 = ((char*)((ng1)));
    t88 = (t0 + 1208U);
    t89 = *((char **)t88);
    memset(t90, 0, 8);
    t88 = (t90 + 4);
    t91 = (t89 + 4);
    t92 = *((unsigned int *)t89);
    t93 = (t92 >> 15);
    t94 = (t93 & 1);
    *((unsigned int *)t90) = t94;
    t95 = *((unsigned int *)t91);
    t96 = (t95 >> 15);
    t97 = (t96 & 1);
    *((unsigned int *)t88) = t97;
    xsi_vlog_mul_concat(t87, 16, 1, t85, 1U, t90, 1);
    xsi_vlogtype_concat(t84, 32, 32, 2U, t87, 16, t86, 16);
    goto LAB34;

LAB35:    t103 = (t0 + 1208U);
    t104 = *((char **)t103);
    t103 = ((char*)((ng2)));
    xsi_vlogtype_concat(t102, 32, 32, 2U, t103, 16, t104, 16);
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t43, 32, t84, 32, t102, 32);
    goto LAB41;

LAB39:    memcpy(t43, t84, 8);
    goto LAB41;

}


extern void work_m_00000000004074361834_4241813833_init()
{
	static char *pe[] = {(void *)Cont_26_0};
	xsi_register_didat("work_m_00000000004074361834_4241813833", "isim/test_mips_isim_beh.exe.sim/work/m_00000000004074361834_4241813833.didat");
	xsi_register_executes(pe);
}
