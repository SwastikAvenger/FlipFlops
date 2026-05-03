`timescale 1ns / 1ps

module JK_FF( 
        input wire en,
        input wire clr,
        input wire J,
        input wire K,
        input wire clk,
        output reg Q
    );
        always@(posedge clk or posedge clr)begin
            if(clr)
                Q<=1'b0;
            else if(en)begin
                case({J,K})
                    2'b00: Q<=Q;
                    2'b01: Q<= 1'b0;
                    2'b10: Q<= 1'b1;
                    2'b11: Q<=!Q;
                endcase
            end 
            else Q<=Q;      //hold last state
        end   
endmodule
