module tb(count vif);
  initial begin
    $display(" Paramaterized interface \n");
    $monitor("\ncount=%03b",vif.counter);
    vif.clk=0;
    //generation clock
    forever #5 vif.clk=~vif.clk;
  end
  //generation reset
  initial begin
    vif.reset=1;
    #20;
    vif.reset=0;
    // Wait for 70 time units before terminating the simulation
    #70;
    // End the simulation
    $finish;
  end
endmodule
