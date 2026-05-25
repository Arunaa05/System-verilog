module wildcard_tb;
  logic [3:0] a, b;

  initial begin
    a = 4'b1010;
    b = 4'b10xx;

    $display("a = %b, b = %b", a, b);

    $display("a==b   = %b", a==b);    // strict compare
    $display("a===b  = %b", a===b);   // case equality
    $display("a==?b  = %b", a==?b);   // wildcard match
    $display("a!=?b  = %b", a!=?b);   // wildcard mismatch

    a = 4'b1010;
    b = 4'b1001;

    $display("a = %b, b = %b", a, b);

    $display("a==?b  = %b", a==?b);
    $display("a!=?b  = %b", a!=?b);

    $finish;
  end
endmodule

//output
a = 1010, b = 10xx
a==b   = x
a===b  = 0
a==?b  = 1
a!=?b  = 0
a = 1010, b = 1001
a==?b  = 0
a!=?b  = 1
Simulation complete via $finish(1) at time 0 FS + 0
./testbench.sv:23     $finish;
xcelium> exit
