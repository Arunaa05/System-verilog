module pass_by_ref_task;
  int a, b;
  int out;
  
  task automatic multiply(ref int a, b, output int out);
    a = a*b; 
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;
    multiply(a,b, out);
    $display("Multiplication: out = %0d, a = %0d and b = %0d", out, a, b); 
  end
endmodule

/*output
Multiplication: out = 30, a = 30 and b = 6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
