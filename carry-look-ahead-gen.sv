module carry_lookahead_generator(
    input [3:0] A, B,
    input Cin,
    output [3:0] P, G,
    output [4:0] C
);
    assign P = A ^ B;     // Propagate
    assign G = A & B;     // Generate

    // Carry look-ahead logic
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | 
                  (P[2] & P[1] & P[0] & C[0]);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | 
                  (P[3] & P[2] & P[1] & G[0]) | 
                  (P[3] & P[2] & P[1] & P[0] & C[0]);
endmodule

`timescale 1ns/1ps

module tb_carry_lookahead_generator;

    reg [3:0] A, B;
    reg Cin;
    wire [3:0] P, G;
    wire [4:0] C;

    // Instantiate the design under test (DUT)
    carry_lookahead_generator dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .P(P),
        .G(G),
        .C(C)
    );

    initial begin
        // Monitor values
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | P=%b | G=%b | C=%b", 
                  $time, A, B, Cin, P, G, C);

        // Test cases
        Cin = 0;
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0001; B = 4'b0010; #10;
        A = 4'b0110; B = 4'b0101; #10;
        A = 4'b1111; B = 4'b0001; #10;
        A = 4'b1010; B = 4'b1100; Cin = 1; #10;

        $finish;
    end
endmodule
