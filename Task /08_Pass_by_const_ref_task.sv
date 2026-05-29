module pass_by_const_ref;
  int a, b;
  int out;
  
  task automatic multiply(const ref int a, b, output int out);
    //a = a*b; 
    out = a*b;
  endtask
  
  initial begin
    a = 5;
    b = 6;
    multiply(a,b, out);
    $display("Multiplication: out = %0d, a = %0d and b = %0d", out, a, b); 
  end
endmodule

/*Output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Multiplication: out = 30, a = 5 and b = 6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
