module two_state_tb;
  bit a;
  byte b;
  int i;
  longint lint;
  shortint sint;
  initial begin
    $display("Default value of bit:%b",a);
    $display("Default value of byte:%b",b);
    $display("Default value of int:%b",i);
    $display("Default value of longint:%b",lint);
    $display("Default value of shortint:%b",sint);
    //bit
    a='0;
    $display("a=%b",a);
    a='hx;
    $display("a=%b",a);
    //byte
    b='h000x000z;
    $display("b=%b",b);
    //int
    i='hcafe;
    $display("i=%d i=%b",i,i);
    i='hx5;
    $display("i=%d i=%b",i,i);
    //longint
    lint='hzx;
    $display("lint=%d lint=%b",lint,lint);
     //shortint
    sint='habcd;
    $display("sint=%d sint=%b",sint,sint);
    sint='hx6;
    $display("sint=%d sint=%b",sint,sint);
  end
endmodule


//output
//Default value of bit:     0
//Default value of byte:    00000000
//Default value of int:     00000000000000000000000000000000
//Default value of longint: 0000000000000000000000000000000000000000000000000000000000000000
//Default value of shortint:0000000000000000
//a=0  
//a=0   
//b=00000000 
//i=51966     i=00000000000000001100101011111110
//i=5         i=00000000000000000000000000000101
//lint=0      lint=0000000000000000000000000000000000000000000000000000000000000000
//sint=-21555 sint=1010101111001101
//sint=6      sint=0000000000000110
  
