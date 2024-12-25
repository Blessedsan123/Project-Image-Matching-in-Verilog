`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:17 12/25/2024
// Design Name:   face_rom
// Module Name:   C:/Users/sande/Documents/xilinx work/face_test/face_tb.v
// Project Name:  face_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: face_rom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module face_tb;
    reg [7:0] addr;             // Address to access ROM
    reg [7:0] test_data [0:15]; // Predefined test data (16 bytes for comparison)
    wire [7:0] rom_data;        // Data output from ROM
    integer i;
    reg match;                  // Match flag

    // Instantiate the ROM
    face_rom rom_inst (
        .addr(addr),
        .data(rom_data)
    );

    initial begin
        // Initialize test data with a range of values for comparison
        test_data[0]  = 8'h74;
        test_data[1]  = 8'h74;
        test_data[2]  = 8'h74;
        test_data[3]  = 8'h74;
        test_data[4]  = 8'h74;  // Example: Larger values
        test_data[5]  = 8'h74;
        test_data[6]  = 8'h74;
        test_data[7]  = 8'h74;
        test_data[8]  = 8'h74;  // Example: Even larger values
        test_data[9]  = 8'h74;
        test_data[10] = 8'h74;
        test_data[11] = 8'h74;
        test_data[12] = 8'h74;  // Example: Near maximum values
        test_data[13] = 8'h74;  // Maximum 8-bit value
        test_data[14] = 8'h74;  // Wrap back to zero
        test_data[15] = 8'h74;  // Repeat initial value

        match = 1; // Assume match initially

        // Compare ROM data with test data
        for (i = 0; i < 16; i = i + 1) begin
            addr = i; // Set address
            #10; // Small delay for data stabilization
            if (rom_data != test_data[i]) begin
                match = 0; // Mismatch found
                $display("Mismatch at address %d: ROM=%h, Test=%h", i, rom_data, test_data[i]);
            end
        end

        // Final result
        if (match)
            $display("Face Matched");
        else
            $display("Face Not Matched");
 // End simulation
    end
endmodule

