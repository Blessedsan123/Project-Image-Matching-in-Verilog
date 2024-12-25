`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:25 12/25/2024 
// Design Name: 
// Module Name:    face_rom 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module face_rom(
    input [7:0] addr,      // 8-bit Address input
    output reg [7:0] data  // 8-bit Data output
);
    reg [7:0] memory [0:255]; // ROM with 256 locations (8-bit each)

    initial begin
        $readmemh("grayscale_data.txt", memory); // Load the hex file into ROM
    end

    always @(*) begin
        data = memory[addr]; // Read data at given address
    end
endmodule


