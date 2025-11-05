// --------------------------
// 4-bit Comparator Module
// --------------------------
module comparator_4bit(
    input  [3:0] A,
    input  [3:0] B,
    output       A_gt_B,
    output       A_eq_B,
    output       A_lt_B
);

    assign A_eq_B = (A == B);
    assign A_gt_B = (A >  B);
    assign A_lt_B = (A <  B);

endmodule

// --------------------------
// Testbench
// --------------------------
module testbench;

    reg  [3:0] A, B;
    wire       A_gt_B, A_eq_B, A_lt_B;

    // instantiate the comparator
    comparator_4bit comp(A, B, A_gt_B, A_eq_B, A_lt_B);

    initial begin
        $display("Time |   A   |   B   | A>B | A=B | A<B");
        $monitor("%4t | %b | %b |  %b  |  %b  |  %b", 
                  $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        // Test cases
        #5  A = 4'b0000; B = 4'b0000;  // A = B
        #5  A = 4'b0011; B = 4'b0001;  // A > B
        #5  A = 4'b0100; B = 4'b0110;  // A < B
        #5  A = 4'b1111; B = 4'b1110;  // A > B
        #5  A = 4'b1010; B = 4'b1010;  // A = B
        #5  A = 4'b0001; B = 4'b1111;  // A < B
        #5  $finish;
    end

endmodule

