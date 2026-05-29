module func;

  function int product(int x,y,z); 
    $display("x=%0d y=%0d z=%0d",x,y,z);
    return x*y*z;

  endfunction

  initial begin
    $display("positional arguement function");
    $display("result = %0d",product(.z(3),.y(2),.x(4)));
  end

endmodule

/*output
xcelium> run
positional arguement function
result = x=4 y=2 z=3
24
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
