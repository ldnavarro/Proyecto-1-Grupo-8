`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2017 15:14:15
// Design Name: 
// Module Name: codificador
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module codificador(
    input [4:0] MSB,
    input [6:0] LSB,
    output reg [2:0] ASCII
    
    );
    wire [11:0]adr;
    assign adr = {MSB,LSB};
    always @*
    case (adr)
        12'b011100100110: ASCII = 3'b001;   //L
        12'b011100101000: ASCII = 3'b010;   //N
        12'b011100101010: ASCII = 3'b011;   //C
        12'b100000100110: ASCII = 3'b100;   //D
        12'b100000101000: ASCII = 3'b101;   //S
        12'b100000101010: ASCII = 3'b110;   //V    
        default: ASCII = 3'b000;
        endcase
           
    
    
endmodule
