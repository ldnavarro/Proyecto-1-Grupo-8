`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2017 23:57:57
// Design Name: 
// Module Name: vga_sync
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


module vga_sync(
    input clk,
    input reset,
    output [9:0] pix_x,
    output hsync,
    output vsync,
    output vid_on,
    output [9:0] pix_y
    );
   
   //mod4 counter
   reg [1:0] cont;
   reg en;
   wire hend, vend;
   //pixeles
   reg [9:0] pix_h, pix_h_next, pix_v, pix_v_next;
   reg vsync_reg, hsync_reg; 
   wire vsync_next, hsync_next;
   
   always @(posedge clk, posedge reset)
   if (reset)
   begin
        cont <= 2'b0;
        pix_h <= 10'b0;
        pix_v <= 10'b0;
        vsync_reg<=1'b0;
        hsync_reg<=1'b0;
        
   end
   else
   begin
        cont <= cont + 1;
        pix_h <= pix_h_next;
        pix_v <= pix_v_next;
        vsync_reg <= vsync_next;
        hsync_reg <= hsync_next;
        
        
   
   end
   
   assign hend = (pix_h==799);
   assign vend = (pix_v==524);
   
//lógica enable
   always @*
   if (cont==2'b11)
        en=1;
   else
        en=0;
        
//lógica contador horizontal
always @*
    if (en)
    begin
        if (hend)
            pix_h_next <= 10'b0;
        else
            pix_h_next <= pix_h + 1;
    end
    else
        pix_h_next <= pix_h;
        
//lógica contador vertical
always @*
    if (en && hend)
    begin
        if(vend)
            pix_v_next <= 10'b0;
        else
            pix_v_next <= pix_v + 1;
    end
    else
        pix_v_next <= pix_v;
     
//señales de sincronización
assign hsync_next = (pix_h<=655 || pix_h>751);  
assign vsync_next = (pix_v<=489 || pix_v>491);

//outputs
assign pix_x = pix_h;
assign pix_y= pix_v;
assign hsync = hsync_reg;
assign vsync = vsync_reg;
assign vid_on = (pix_v<480 && pix_h<640);
endmodule
