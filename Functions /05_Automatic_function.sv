module automatic_function;

  function automatic int mul(int count = 0;);
    
    count++;
    return count;

  endfunction
  
  initial begin
    $display("Automatic Function");
    $display("%0d", mul());
    $display("%0d", mul());
    $display("%0d", mul());
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Automatic Function
1
1
1

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
