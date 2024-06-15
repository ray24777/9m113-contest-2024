module bank(
    input vsi_clk,
    input vsi_reset_n,
    input [127:0] vsi_inputData,
    input [6:0] vsi_inputAddr,
    input vsi_inputChipSelect,
    input vsi_outputChipSelect,
    input [6:0] vsi_outputAddr,
    input [127:0] vsi_bw,
    output wire [127:0] vsi_outputData
);

//attention! B is for WRITE, A is for READ
MBH_ZSWL_IN22FDX_R2PV_WFVG_W00128B128M02C128 sram
(
    .clkA(vsi_clk),
    .clkB(vsi_clk),
    .cenA(~vsi_outputChipSelect),//en is activited low by definition
    .cenB(~vsi_inputChipSelect),
    .deepsleep(1'b0),
    .powergate(1'b0),
    .aA(vsi_outputAddr),//Addr
    .aB(vsi_inputAddr),//Addr
    .d(vsi_inputData),
    .bw(vsi_bw),
    .q(vsi_outputData)
);

endmodule
