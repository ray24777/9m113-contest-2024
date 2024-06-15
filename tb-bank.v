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
    integer i;
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

    //rst
    initial begin
        vsi_reset_n=1'b0;
        #3;
        vsi_reset_n=1'b1;
    end

    // Testbench stimulus
        initial begin
                #4;
                for(i=0; i<10; i++)
                begin
                        vsi_inputAddr=i;
                        vsi_inputData = $urandom();
                        vsi_inputChipSelect = 1'b1;
                        vsi_outputChipSelect = 1'b0;
                        vsi_outputAddr=0;
                        #10;
                end

                for(i=0; i<10; i++)
                begin
                        vsi_outputAddr=i;
                        vsi_inputData = $urandom();
                        vsi_inputChipSelect = 1'b0;
                        vsi_outputChipSelect = 1'b1;
                        vsi_inputAddr=0;
                        #10;
                end
                #5;
                $finish;
        end

endmodule
