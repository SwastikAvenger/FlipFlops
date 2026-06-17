`timescale 1ns / 1ps
module D_ff(
        input clk,                              //clock
        input rst,                              //clear
        input i_data,                       //input data
        output reg o_data               //output data
    );
    
        always@(posedge clk or posedge rst)begin
            if(rst)
                o_data <= 1'b0;
            else
                o_data <= i_data; 
        end
endmodule
