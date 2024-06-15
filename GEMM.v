module GEMM (
    // Global signals
    input              vsi_clk,
    input              vsi_reset_n, 
    input              vsi_start,
    input  [3:0]      vsi_matrix_cnt, 
    output             vsi_done
    
    // Read Interface
    output             vsi_raddr_valid,
    output	[31:0]	    vsi_raddr, 
    
    input              vsi_rdata_valid,
    input	[127:0]    vsi_rdata, 
    
    // Write Interface
    output	            vsi_wx_valid,
    output [31:0]	    vsi_waddr,
    output [127:0]	vsi_wdata,
    output [15:0]     vsi_wstrobe
);




// Design content ...
endmodule