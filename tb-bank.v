`timescale 1ns/1ps

module bank_tb;

    // Testbench signals
    reg vsi_clk;
    reg vsi_reset_n;
    reg [127:0] vsi_inputData;
    reg [6:0] vsi_inputAddr;
    reg vsi_inputChipSelect;
    reg vsi_outputChipSelect;
    reg [6:0] vsi_outputAddr;
    wire[127:0] vsi_outputData;

    // Instantiate the bank module
    bank uut (
        .vsi_clk(vsi_clk),
        .vsi_reset_n(vsi_reset_n),
        .vsi_inputData(vsi_inputData),
        .vsi_inputAddr(vsi_inputAddr),
        .vsi_inputChipSelect(vsi_inputChipSelect),
        .vsi_outputChipSelect(vsi_outputChipSelect),
        .vsi_outputAddr(vsi_outputAddr),
        .vsi_outputData(vsi_outputData)
    );

    // Clock generation
    initial begin
        vsi_clk = 0;
        forever #5 vsi_clk = ~vsi_clk; // 100 MHz clock
    end

    // Testbench stimulus
    initial begin
    //write test
    vsi_inputAddr = 7'b0000001;
    vsi_inputData = 128'habcd123;
    vsi_inputChipSelect = 1'b1;
    vsi_outputChipSelect = 1'b0;
    vsi_outputAddr = 7'b0000000;
    vsi_reset_n = 1'b1;
    #10;
    //another write test
    vsi_inputAddr = 7'b0000010;
    vsi_inputData = 128'h1234abcd;
    vsi_inputChipSelect = 1'b1;
    vsi_outputChipSelect = 1'b0;
    vsi_outputAddr = 7'b0000000;
    vsi_reset_n = 1'b1;
    #10;
    //read while write test
    vsi_inputAddr = 7'b0000011;
    vsi_inputData = 128'h123a1bcd;
    vsi_outputAddr = 7'b0000001;
    vsi_inputChipSelect = 1'b1;
    vsi_outputChipSelect = 1'b1;
    #10;
    //read test
    vsi_inputAddr = 7'b0000100;
    vsi_inputData = 128'h123a1bca;
    vsi_outputAddr = 7'b0000010;
    vsi_inputChipSelect = 1'b0;
    vsi_outputChipSelect = 1'b1;
    end
endmodule