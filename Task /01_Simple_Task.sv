// Code your testbench here
// or browse Examples
module simple_task;
  int x=5;
  int y=5;
  int result;
  
  task mul (input int multiplicand,multiplicator,output int res);
    
    res=multiplicand*multiplicator;
    
  endtask
  
  initial begin
    mul(x,y,result);
    $display("Result=%0d",result);
  end
 
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Result=25
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
