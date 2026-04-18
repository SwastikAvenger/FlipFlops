`timescale 1ns / 1ps

module SR_FF(
        input en,
        input clk,
        input wire S,
        input wire R,
        input wire clr,
        output reg Q
    );    
    always@(posedge clk or posedge clr)begin
        if(clr)
            Q <= 1'b0;
        else if(en) begin
            case({S,R})
                2'b00: Q <= Q;      //No Change
                2'b01: Q <= 1'b0;   //Reset
                2'b10: Q <= 1'b1;   //Set
                2'b11: Q <= 1'bx;   //High Impedance, Forbidden State    
            endcase
        end
    end
endmodule
