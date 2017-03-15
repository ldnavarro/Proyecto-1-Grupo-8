`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2017 14:17:28
// Design Name: 
// Module Name: ROM
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


module ROM(
    input [6:0] addr,
    output reg [7:0] data
    );    
          
      
    always @*
    case (addr)
        // vacio
             7'h00: data =8'b00000000;
             7'h01: data =8'b00000000;
             7'h02: data =8'b00000000;
             7'h03: data =8'b00000000;
             7'h04: data =8'b00000000;
             7'h05: data =8'b00000000;
             7'h06: data =8'b00000000;
             7'h07: data =8'b00000000;
             7'h08: data =8'b00000000;
             7'h09: data =8'b00000000;
             7'h0a: data =8'b00000000;
             7'h0b: data =8'b00000000;
             7'h0c: data =8'b00000000;
             7'h0d: data =8'b00000000;
             7'h0e: data =8'b00000000;
             7'h0f: data =8'b00000000;
             
       
        //L;
        
             7'h10: data =8'b00000000;
             7'h11: data =8'b00000000;
             7'h12: data =8'b00000000;
             7'h13: data =8'b00000000;
             7'h14: data =8'b11000000;
             7'h15: data =8'b11000000;
             7'h16: data =8'b11000000;
             7'h17: data =8'b11000000;
             7'h18: data =8'b11000000;
             7'h19: data =8'b11000000;
             7'h1a: data =8'b11000000;
             7'h1b: data =8'b11111111;
             7'h1c: data =8'b00000000;
             7'h1d: data =8'b00000000;
             7'h1e: data =8'b00000000;
             7'h1f: data =8'b00000000;
        
        //N
        
             7'h20: data =8'b00000000;
             7'h21: data =8'b00000000;
             7'h22: data =8'b00000000;
             7'h23: data =8'b00000000;
             7'h24: data =8'b11000011;
             7'h25: data =8'b11100011;
             7'h26: data =8'b11110011;
             7'h27: data =8'b11011011;
             7'h28: data =8'b11001111;
             7'h29: data =8'b11000111;
             7'h2a: data =8'b11000011;
             7'h2b: data =8'b11000011;
             7'h2c: data =8'b00000000;
             7'h2d: data =8'b00000000;
             7'h2e: data =8'b00000000;
             7'h2f: data =8'b00000000;
        
        //C
        
             7'h30: data =8'b00000000;
             7'h31: data =8'b00000000;
             7'h32: data =8'b00000000;
             7'h33: data =8'b00000000;
             7'h34: data =8'b00111110;
             7'h35: data =8'b01100001;
             7'h36: data =8'b11000000;
             7'h37: data =8'b10000000;
             7'h38: data =8'b10000000;
             7'h39: data =8'b11000000;
             7'h3a: data =8'b01100001;
             7'h3b: data =8'b00111110;
             7'h3c: data =8'b00000000;
             7'h3d: data =8'b00000000;
             7'h3e: data =8'b00000000;
             7'h3f: data =8'b00000000;
        
        //D
        
             7'h40: data =8'b00000000;
             7'h41: data =8'b00000000;
             7'h42: data =8'b00000000;
             7'h43: data =8'b00000000;
             7'h44: data =8'b11110000;
             7'h45: data =8'b11001100;
             7'h46: data =8'b11000110;
             7'h47: data =8'b11000011;
             7'h48: data =8'b11000011;
             7'h49: data =8'b11000110;
             7'h4a: data =8'b11001100;
             7'h4b: data =8'b11110000;
             7'h4c: data =8'b00000000;
             7'h4d: data =8'b00000000;
             7'h4e: data =8'b00000000;
             7'h4f: data =8'b00000000;
        
        //S
        
             7'h50: data =8'b00000000;
             7'h51: data =8'b00000000;
             7'h52: data =8'b00000000;
             7'h53: data =8'b00000000;
             7'h54: data =8'b00111100;
             7'h55: data =8'b11100111;
             7'h56: data =8'b11100000;
             7'h57: data =8'b11100000;
             7'h58: data =8'b00111100;
             7'h59: data =8'b00000111;
             7'h5a: data =8'b11100111;
             7'h5b: data =8'b00111100;
             7'h5c: data =8'b00000000;
             7'h5d: data =8'b00000000;
             7'h5e: data =8'b00000000;
             7'h5f: data =8'b00000000;
        //V
        
             7'h60: data =8'b00000000;
             7'h61: data =8'b00000000;
             7'h62: data =8'b00000000;
             7'h63: data =8'b00000000;
             7'h64: data =8'b11000011;
             7'h65: data =8'b11000011;
             7'h66: data =8'b11000011;
             7'h67: data =8'b01100110;
             7'h68: data =8'b01100110;
             7'h69: data =8'b01100110;
             7'h6a: data =8'b01111110;
             7'h6b: data =8'b00111000;
             7'h6c: data =8'b00000000;
             7'h6d: data =8'b00000000;
             7'h6e: data =8'b00000000;
             7'h6f: data =8'b00000000;
             default: data=8'b00000000;
            
            
           endcase
endmodule
