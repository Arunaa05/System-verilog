module top();

  // interfce module called
  count vif();

  // design module called
  up_counter a1(.clk(vif.clk),
                .reset(vif.reset),
                .counter(vif.counter)
               );

  // testbench module called
  tb a2(vif);

endmodule : top
