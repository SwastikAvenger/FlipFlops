`timescale 1ns / 1ps
module T_FF(
        input wire clk,
        input wire clr,
        input wire pre,
        input wire en,
        input wire T,
        output reg Q
    );
    
    always@(posedge clk)begin
        if(en)begin
            if(clr)    Q <= 1'b0;           //If Clear, output is zero
            else if(pre)    Q <= 1'b1;      //If Preset, output is one
            else if(T)    Q <= ~Q;          //If data = 1, toggle output
            else Q <= Q;                    //If data = 0, hold output
        end
    end
endmodule
