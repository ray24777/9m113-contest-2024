module MatrixB #(
    parameter DATA_WIDTH = 8,
    parameter RAM_WIDTH = 128,
    parameter VECTOR_LEN = 16
)
(
    input               vsi_clk,
    input               vsi_rstn,
    input               vsi_en,

    // External Input Mem interface
    input   [127:0]     vsi_rdata,
    input               vsi_rdata_valid,

    output  [31:0]      vsi_raddr,
    output  wire        vsi_raddr_valid,
    input   [12:0]      vsi_raddr_offset,

    // SRAM output interface
    input   wire [6:0]  vsi_SRAM_oaddr1,
    input   wire [6:0]  vsi_SRAM_oaddr2,
    input   wire [6:0]  vsi_SRAM_oaddr3,
    input   wire [6:0]  vsi_SRAM_oaddr4,
    output  wire [127:0]  vsi_SRAM_odata1,
    output  wire [127:0]  vsi_SRAM_odata2,
    output  wire [127:0]  vsi_SRAM_odata3,
    output  wire [127:0]  vsi_SRAM_odata4,
    input   wire vsi_SRAM_oen1,
    input   wire vsi_SRAM_oen2,
    input   wire vsi_SRAM_oen3,
    input   wire vsi_SRAM_oen4

);

wire [127:0]  vsi_SRAM_idata1;
wire [127:0]  vsi_SRAM_idata2;
wire [127:0]  vsi_SRAM_idata3;
wire [127:0]  vsi_SRAM_idata4;
wire [6:0]  vsi_SRAM_iaddr1;
wire [6:0]  vsi_SRAM_iaddr2;
wire [6:0]  vsi_SRAM_iaddr3;
wire [6:0]  vsi_SRAM_iaddr4;
wire vsi_SRAM_ien1;
wire vsi_SRAM_ien2;
wire vsi_SRAM_ien3;
wire vsi_SRAM_ien4;
wire [127:0]  vsi_SRAM_bw1;
wire [127:0]  vsi_SRAM_bw2;
wire [127:0]  vsi_SRAM_bw3;
wire [127:0]  vsi_SRAM_bw4;


assign vsi_raddr_valid = vsi_en;

always @(posedge vsi_clk or negedge vsi_rstn) begin
    if (~vsi_rstn) begin
        vsi_raddr <= vsi_raddr_offset;
    end else begin
        if (vsi_en) begin
            vsi_raddr <= 
        end
    end
end



bank SRAM1(
    .vsi_clk(vsi_clk),
    .vsi_reset_n(vsi_rstn),
    .vsi_inputData(vsi_SRAM_idata1),
    .vsi_inputAddr(vsi_SRAM_iaddr1),
    .vsi_inputChipSelect(vsi_SRAM_ien1),
    .vsi_outputChipSelect(vsi_SRAM_oen1),
    .vsi_outputAddr(vsi_SRAM_oaddr1),
    .vsi_bw(vsi_SRAM_bw1),
    .vsi_outputData(vsi_SRAM_odata1)
);

bank SRAM2(
    .vsi_clk(vsi_clk),
    .vsi_reset_n(vsi_rstn),
    .vsi_inputData(vsi_SRAM_idata2),
    .vsi_inputAddr(vsi_SRAM_iaddr2),
    .vsi_inputChipSelect(vsi_SRAM_ien2),
    .vsi_outputChipSelect(vsi_SRAM_oen2),
    .vsi_outputAddr(vsi_SRAM_oaddr2),
    .vsi_bw(vsi_SRAM_bw2),
    .vsi_outputData(vsi_SRAM_odata2)
);

bank SRAM3(
    .vsi_clk(vsi_clk),
    .vsi_reset_n(vsi_rstn),
    .vsi_inputData(vsi_SRAM_idata3),
    .vsi_inputAddr(vsi_SRAM_iaddr3),
    .vsi_inputChipSelect(vsi_SRAM_ien3),
    .vsi_outputChipSelect(vsi_SRAM_oen3),
    .vsi_outputAddr(vsi_SRAM_oaddr3),
    .vsi_bw(vsi_SRAM_bw3),
    .vsi_outputData(vsi_SRAM_odata3)
);

bank SRAM4(
    .vsi_clk(vsi_clk),
    .vsi_reset_n(vsi_rstn),
    .vsi_inputData(vsi_SRAM_idata4),
    .vsi_inputAddr(vsi_SRAM_iaddr4),
    .vsi_inputChipSelect(vsi_SRAM_ien4),
    .vsi_outputChipSelect(vsi_SRAM_oen4),
    .vsi_outputAddr(vsi_SRAM_oaddr4),
    .vsi_bw(vsi_SRAM_bw4),
    .vsi_outputData(vsi_SRAM_odata4)
);


endmodule
