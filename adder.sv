module adder(input [0:3]a,b,input cin,output cout , output [0:3]sum);

assign {cout,sum} = a+b+cin;


endmodule

module test;
reg cin;
reg [0:3]a,bin;
wire cout;
wire [0:3]sum;


adder d1(a,bin,cin,cout,sum);


initial 
begin

$monitor($time,"a = %0b , b = %0b ,cin = %0b , sum= %0b , cout = %0b",a,bin,cin,sum,cout);


#5
a=4'b0000; bin=4'b0010 ;cin =0;
#5
a=4'b1111 ; bin=4'b1111; cin =1;

//$monitor($time,"a = %0b , b = %0b ,cin = %0b , sum= %0b , cout = %0b",a,bin,cin,sum,cout);
end

endmodule
