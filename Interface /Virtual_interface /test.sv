module tb_top;
  bit clk=0;
  
  // Generate clock
  always #5 clk = ~clk;
  d_ff dut(.d(my_if.d),
           .clk(my_if.clk),
           .rst(my_if.rst),
           .q(my_if.q)
               );

  // FIXED: The compiler has already read 'dff_if' above, so it resolves perfectly!
  dff_if my_if(clk);

  initial begin
    driver drv;
    drv = new(my_if);
    //my_if.rst = 1;      // Activate reset
    my_if.d   = 0;
    //#5;                // Wait for a clock edge to pass
    //my_if.rst = 0;      // De-activate reset
    drv.main();
    $finish;
  end
endmodule
