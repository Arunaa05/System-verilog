module operators;
  reg [7:0] a, b;
  reg sel;
  initial begin
    a   = 8'b1010_1100;
    b   = 8'b0101_0011;
    sel = 1'b1;

    $display("---- SHIFT OPERATORS ----");
    $display("a<<1 = %b | a>>1 = %b | a<<<1 = %b | a>>>1 = %b",
             a<<1, a>>1, a<<<1, a>>>1);
    $display("---- REDUCTION OPERATORS ----");
    $display("&a = %b | |a = %b | ^a = %b | ~&a = %b | ~|a = %b",
             &a, |a, ^a, ~&a, ~|a);
    $display("---- CONCATENATION ----");
    $display("{a,b} = %b | {b,a} = %b | {a[3:0],b[3:0]} = %b",
             {a,b}, {b,a}, {a[3:0], b[3:0]});
    $display("---- REPLICATION ----");
    $display("{2{a}} = %b | {3{b[1:0]}} = %b",
             {2{a}}, {3{b[1:0]}});
    $display("---- CONDITIONAL ----");
    $display("max = %b | min = %b | sel output = %b",
             (a>b ? a : b),
             (a<b ? a : b),
             (sel ? a : b));
    #10;
    $finish;
  end
endmodule

//output
---- SHIFT OPERATORS ----
a<<1 = 01011000 | a>>1 = 01010110 | a<<<1 = 01011000 | a>>>1 = 01010110
---- REDUCTION OPERATORS ----
&a = 0 | |a = 1 | ^a = 0 | ~&a = 1 | ~|a = 0
---- CONCATENATION ----
{a,b} = 1010110001010011 | {b,a} = 0101001110101100 | {a[3:0],b[3:0]} = 11000011
---- REPLICATION ----
{2{a}} = 1010110010101100 | {3{b[1:0]}} = 111111
---- CONDITIONAL ----
max = 10101100 | min = 01010011 | sel output = 10101100
Simulation complete via $finish(1) at time 10 NS + 0
./testbench.sv:30     $finish;
xcelium> exit
