`timescale 1ns / 1ps

module tb_D_ff();
    reg clk;    
    reg rst;
    reg i_data; 
    wire o_data;
    
    D_ff uut(
        .clk(clk),
        .rst(rst),
        .i_data(i_data),
        .o_data(o_data)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // Toggle every 5 ns
    end
    
    // Stimulus
    initial begin
        rst = 1; i_data = 0;
        #10 rst = 0;             // Release reset after some time
        
        #10 i_data = 1'b0;
        #10 i_data = 1'b1;
        #10 i_data = 1'b1;
        #10 i_data = 1'b0;
        
        #10 i_data = 1'b0;
        #10 i_data = 1'b1;
        #10 i_data = 1'b1;
        #10 i_data = 1'b0;
 
        $finish;
    end
endmodule
