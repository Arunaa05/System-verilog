module pass_by_value;
  
  function int exor(input int a,b);
   
    $display("a=%0d b=%0d",a,b);
    a=a^b;
    return a;
    
  endfunction
   
  int res;
  initial begin
    $display("Pass_by_value_function");
    res=exor(5,6);
    $display("exor res=%0d",res);
    
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Pass_by_value_function
a=5 b=6
exor res=3

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
