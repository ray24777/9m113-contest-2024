module bank(
    input vsi_clk,
    input vsi_reset_n,
    input [127:0] vsi_inputData,
    input [6:0] vsi_inputAddr,
    input vsi_inputChipSelect,
    input vsi_outputChipSelect,
    input [6:0] vsi_outputAddr,
    output [127:0] vsi_outputData
);

//attention! B is for WRITE, A is for READ
MBH_ZSWL_IN22FDX_R2PV_WFVG_W00128B128M02C128 sram
(
    .CLK_A(vsi_clk),
    .CLK_B(vsi_clk),
    .CEN_A(~vsi_outputChipSelect),//en is activited low by definition
    .CEN_B(~vsi_inputChipSelect),
    .DEEPSLEEP(1'b0),
    .POWERGATE(1'b0),
    .aA(vsi_inputAddr),//Addr
    .aB(vsi_outputAddr),//Addr
    .D(vsi_inputData),
    .BW(128'b0),
    .T_LOGIC(1'b0),
    .MA_SAWL(1'b0),
    .MA_WL(1'b0),
    .MA_WRAS(1'b0),
    .MA_WRASD(1'b0),
    .MA_TPA(1'b0),
    .MA_TPB(1'b0),
    .RWE(1'b0),
    .RWFA(6'b000000),
    .Q(vsi_outputData),
    .OBSV_DBW(128'b0),
    .OBSV_CTL_A(1'b0),
    .OBSV_CTL_B(1'b0)
);

endmodule
