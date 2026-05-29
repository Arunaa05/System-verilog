module pass_by_ref;
  
  int a,b;
  int calc;
  
  function automatic int sub(ref int a,b);
    
    $display("a=%0d b=%0d ",a,b);
    a=a-b;
    return a;
    
  endfunction
  
  initial begin
    a=3;
    b=2;
    calc=sub(a,b);
    $display(" sub =%0d",calc);
    
    $display("After function:");
    $display("original a=%0d b=%0d",a,b);
  end
endmodule
    
/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

a=3 b=2 
 sub =1
After function:
original a=1 b=2

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
