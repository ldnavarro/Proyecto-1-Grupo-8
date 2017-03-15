`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2017 16:03:05
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input reset,
    input [2:0]rgb_i,
    output [2:0] rgb_o,
    output vsync,hsync
    );
    wire [6:0] ROM_adr;
    wire [9:0] pix_y, pix_x;
    wire [2:0] asc;
    wire vid_on;
    wire [2:0] MUX_c;
    wire [7:0] data;
    wire [4:0] cod_MSB; 
    wire [6:0] cod_LSB;
    reg text_on;
    reg [2:0] rgb_o_reg;
    assign MUX_c = pix_x[2:0];
    assign ROM_adr = {asc,pix_y[3:0]};
    assign cod_MSB = pix_y[8:4];
    assign cod_LSB = pix_x[9:3];
    
    vga_sync sincro(
        .clk(clk), 
        .reset(reset),
        .pix_x(pix_x),
        .hsync(hsync),
        .vsync(vsync),
        .vid_on(vid_on),
        .pix_y(pix_y)
        );
        
    ROM letras(
        .addr(ROM_adr),
        .data(data)
            );
            
    codificador ASCII(
         .MSB(cod_MSB),
         .LSB(cod_LSB),
         .ASCII(asc)
            );
    
   always @*
   case(MUX_c)
    3'b000: text_on=data[7];
    3'b001: text_on=data[6];
    3'b010: text_on=data[5];
    3'b011: text_on=data[4];
    3'b100: text_on=data[3];
    3'b101: text_on=data[2];
    3'b110: text_on=data[1];
    3'b111: text_on=data[0];
    default: text_on=0;
    endcase 
   
   always @*
        if(~vid_on)
            rgb_o_reg = 3'b0;
        else
        begin
        if(text_on)
            rgb_o_reg = rgb_i;
        else
            rgb_o_reg = 3'b0;
        end
  assign rgb_o = rgb_o_reg;             
endmodule
