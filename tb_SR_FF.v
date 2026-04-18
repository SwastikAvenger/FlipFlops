`timescale 1ns / 1ps

module tb_SR_FF;
    reg en; reg clk; reg clr;
    reg S;  reg R;
    wire Q;
    
    //Module Instantiation
    SR_FF dut(
        .en(en), .clk(clk),
        .S(S), .R(R),
        .clr(clr),
        .Q(Q));
        
    //Set all inputs to zero
    initial begin
        en = 0; clk = 0; clr = 0; S = 0; R = 0;
    end   
    //Stimulus for clock
    initial begin
        clk = 0;
        forever #5 clk = !clk;
    end
    //Stimulus for input
    initial begin
        en = 0;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;
          #10 clr = 1'b1;       //Set Clear
          #10 clr = 1'b0;       //Reset Clear
        en = 1;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;  
          #10 clr = 1'b1;
        $finish;
    end
    //Monitor 
    initial begin
        $monitor("Time=%0t | en=%b clr=%b S=%b R=%b | Q=%b",
              $time, en, clr, S, R, Q);
    end
endmodule
