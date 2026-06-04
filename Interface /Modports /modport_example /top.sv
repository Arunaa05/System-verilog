module top();

  // interfce module called
  signals vif();

  // design module called
  and_gate a1(vif);

  // testbench module called
  tb a2(vif);

endmodule : top
