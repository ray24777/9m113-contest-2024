`timescale 1ns/1ps

module bank_tb;

    // Testbench signals
    reg vsi_clk;
    reg vsi_reset_n;
    reg vsi_inputData;
    reg vsi_inputAddr;
    reg vsi_inputChipSelect;
    reg vsi_outputChipSelect;
    reg vsi_outputAddr;
    wire vsi_outputData;

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
    vsi_inputAddr = 
    end
endmodule