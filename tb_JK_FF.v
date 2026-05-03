`timescale 1ns/1ps

module tb_JK_FF();
    reg en; reg clr; reg clk;
    reg J;  reg K;
    wire Q;
    
    JK_FF dut(
        .en(en),
        .clr(clr),
        .J(J),
        .K(K),
        .clk(clk),
        .Q(Q)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = !clk;
    end
    initial begin
        en = 0; clr = 0; 
        J = 0; K = 0;
    end

    initial begin
    // Reset pulse
        clr = 1; #12 clr = 0;
    
    en = 1;
    // Apply JK combinations on clock edges
        #10 {J,K} = 2'b00;  // hold
        #10 {J,K} = 2'b01;  // reset
        #10 {J,K} = 2'b10;  // set
        #10 {J,K} = 2'b11;  // toggle
    
    // Clear again
    #10 clr = 1; #10 clr = 0;
                 
        $finish;  
    end
    
endmodule