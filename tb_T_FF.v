`timescale 1ns/1ps
module tb_T_FF();
    reg clk;  reg clr;  reg pre;
    reg en;   reg T;
    wire Q;
    
    //Module Instantiation
    T_FF dut(
        .clk(clk),
        .clr(clr),
        .pre(pre),
        .en(en),
        .T(T),
        .Q(Q)
    );
    
    //Clock
    initial clk = 0;
    always #5 clk = ~clk;
    
    //Initial Values
    initial begin
        clr = 1'b0;  pre = 1'b0;
        en = 1'b0;  T = 1'b0;
    end
    
    //Stimulus Generation
    initial begin
      //Enable is LOW
      en = 1'b0;
        repeat(2) @(negedge clk) clr = 1'b1;
        clr = 1'b0;     //Deassert Clear
        repeat(2) @(negedge clk) pre = 1'b1;
        pre = 1'b0;     //Deaasert Preset
      
       //Enable is HIGH
      en = 1'b1;
        repeat(2) @(negedge clk) clr = 1'b1;
        clr = 1'b0;     //Deassert Clear
        repeat(2) @(negedge clk) pre = 1'b1;
        pre = 1'b0;     //Deaasert Preset
        repeat(3) @(negedge clk) T = 1'b0;
        repeat(3) @(negedge clk) T = 1'b1;
        $finish;        
    end
    
    //Monitor
    initial begin
        $monitor("Time = %t | Enable = %b | Clear = %b | Preset = %b | T = %b | Q = %b",
$time, en, clr, pre, T, Q);
    end
endmodule