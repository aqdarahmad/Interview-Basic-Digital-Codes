module sub(
input logic a,b,bin,output logic d,bout

);

assign d = a ^ b ^ bin;
assign bout =  (~a & b) | (b & bin) | (~a & bin);

endmodule


module test;

wire d,bout;
reg a,b,bin;

sub b1(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
  initial begin
        // Test Case 1
        a = 0; b = 0; bin = 0; #5;
        $display("TC1: a=%b b=%b bin=%b => d=%b bout=%b", a,b,bin,d,bout);

        // Test Case 2
        a = 0; b = 1; bin = 0; #5;
        $display("TC2: a=%b b=%b bin=%b => d=%b bout=%b", a,b,bin,d,bout);

        // Test Case 3
        a = 1; b = 0; bin = 1; #5;
        $display("TC3: a=%b b=%b bin=%b => d=%b bout=%b", a,b,bin,d,bout);

        // Test Case 4
        a = 1; b = 1; bin = 1; #5;
        $display("TC4: a=%b b=%b bin=%b => d=%b bout=%b", a,b,bin,d,bout);

        $finish;
    end


endmodule