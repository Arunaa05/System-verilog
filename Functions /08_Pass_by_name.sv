module pass_by_name;
  int a, b;
  int out;
  
  function void display(string name, int val);
    $display(" string: %s, %0d", name, val);
  endfunction

  initial 
    begin
       display(.val(5), .name("Arun"));
    end
  
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

 string: Arun, 5
 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
