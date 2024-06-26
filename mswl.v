//==========================================================================
//==               Copyright (c) 2024 Synopsys, Inc.
//==     All Rights reserved - Unpublished - rights reserved under
//==     the Copyright laws of the United States of America.
//== 
//== U.S. Patents: 7,093,156 B1 and 7,406,620 B2 (and more pending).
//== 
//== This file includes the Confidential information of Synopsys, Inc.
//== and GLOBALFOUNDRIES.
//== The receiver of this Confidential Information shall not disclose
//== it to any third party and shall protect its confidentiality by
//== using the same degree of care, but not less than a reasonable
//== degree of care, as the receiver uses to protect receiver's own
//== Confidential Information.
//== Licensee acknowledges and agrees that all output generated for
//== Licensee by Synopsys, Inc. as described in the pertinent Program
//== Schedule(s), or generated by Licensee through use of any Compiler
//== licensed hereunder contains information that complies with the
//== Virtual Component Identification Physical Tagging Standard (VCID)
//== as maintained by the Virtual Socket Interface Alliance (VSIA).
//== Such information may be expressed in GDSII Layer 63 or other such
//== layer designated by the VSIA, hardware definition languages, or
//== other formats. Licensee is not authorized to alter or change any
//== such information.
//==========================================================================
//== Generated: 05/23/2024 02:45:13
//== Synopsys Memory Release: V04R30SZ_21JUN2020
//== 22fdsoi PDK 22FDX_V1.3_3.0
//==
//== IDTK_ROOT: /ux/lib9/reltp/Library/Synopsys/GF_22FDX/MC/IN22FDX_MEMR2PV_COMPILER_FDK_RELV04R30SZ_21JUN2020/idtk
//== IDDK_ROOT: /ux/lib9/reltp/Library/Synopsys/GF_22FDX/MC/IN22FDX_MEMR2PV_COMPILER_FDK_RELV04R30SZ_21JUN2020/iddk
//== IDDK_TECH: 22fdsoi
//==========================================================================

//==========================================================================
//==               Copyright (c) 2024 Synopsys, Inc.
//==     All Rights reserved - Unpublished - rights reserved under
//==     the Copyright laws of the United States of America.
//== 
//== U.S. Patents: 7,093,156 B1 and 7,406,620 B2 (and more pending).
//== 
//== This file includes the Confidential information of Synopsys, Inc.
//== and GLOBALFOUNDRIES.
//== The receiver of this Confidential Information shall not disclose
//== it to any third party and shall protect its confidentiality by
//== using the same degree of care, but not less than a reasonable
//== degree of care, as the receiver uses to protect receiver's own
//== Confidential Information.
//== Licensee acknowledges and agrees that all output generated for
//== Licensee by Synopsys, Inc. as described in the pertinent Program
//== Schedule(s), or generated by Licensee through use of any Compiler
//== licensed hereunder contains information that complies with the
//== Virtual Component Identification Physical Tagging Standard (VCID)
//== as maintained by the Virtual Socket Interface Alliance (VSIA).
//== Such information may be expressed in GDSII Layer 63 or other such
//== layer designated by the VSIA, hardware definition languages, or
//== other formats. Licensee is not authorized to alter or change any
//== such information.
//==========================================================================
//== Generated: 05/23/2024 02:45:13
//== Synopsys Memory Release: V04R30SZ_21JUN2020
//== 22fdsoi PDK 22FDX_V1.3_3.0
//==
//== IDTK_ROOT: /ux/lib9/reltp/Library/Synopsys/GF_22FDX/MC/IN22FDX_MEMR2PV_COMPILER_FDK_RELV04R30SZ_21JUN2020/idtk
//== IDDK_ROOT: /ux/lib9/reltp/Library/Synopsys/GF_22FDX/MC/IN22FDX_MEMR2PV_COMPILER_FDK_RELV04R30SZ_21JUN2020/iddk
//== IDDK_TECH: 22fdsoi
//==========================================================================

`timescale 1ns / 1ps
module MBH_MSWL_IN22FDX_R2PV_WFVG_W00128B128M02C128
   (
     input CLK_A,
     input CLK_B,
     input CEN_A,
     input CEN_B,
     input DEEPSLEEP,
     input POWERGATE,
     input [6+1-1:0] aA,
     input [6+1-1:0] aB,
     input [128-1:0] D,
     input [128-1:0] BW,
     input T_LOGIC,
     input MA_TPA,
     input MA_TPB,
     input MA_SAWL,
     input MA_WL,
     input MA_WRAS,
     input MA_WRASD,
     input RWE,
     input [5:0] RWFA,
     output [128-1:0] Q,
     output [128-1:0] OBSV_DBW,
     output OBSV_CTL_A,
     output OBSV_CTL_B
     );

// VSIA_Soft_IP_Tag % Vendor SYNOPSYS % Product 22FDX % Version v00r50 % Metric 100 % IP_Owner VTMDC % Celltype IP % Cell_Id MBH_MSWL_IN22FDX_R2PV_WFVG_W00128B128M02C128 % Signature 100 % Tag_Spec 3.0 % Date_Time 20240523 % Process_Step Source

   wire [6-1:0]   n_awA, n_awB;
   wire [1-1:0]   n_acA, n_acB;
   assign {n_awA, n_acA} = aA;
   assign {n_awB, n_acB} = aB;
   IN22FDX_R2PV_WFVG_W00128B128M02C128 R2P
     (
      .CLK_A       (CLK_A),
      .CLK_B       (CLK_B),
      .CEN_A       (CEN_A),
      .CEN_B       (CEN_B),
      .DEEPSLEEP   (DEEPSLEEP),
      .POWERGATE   (POWERGATE),
      .AW_A        (n_awA),
      .AC_A        (n_acA),
      .AW_B        (n_awB),
      .AC_B        (n_acB),
      .D           (D),
      .BW          (BW),
      .T_LOGIC     (T_LOGIC),
      .MA_TPA      (MA_TPA),
      .MA_TPB      (MA_TPB),
      .MA_SAWL     (MA_SAWL),
      .MA_WL       (MA_WL),
      .MA_WRAS     (MA_WRAS),
      .MA_WRASD    (MA_WRASD),
      .RWE         (RWE),
      .RWFA        (RWFA),
      .Q           (Q),
      .OBSV_DBW    (OBSV_DBW),
      .OBSV_CTL_A  (OBSV_CTL_A),
      .OBSV_CTL_B  (OBSV_CTL_B)
      );
endmodule