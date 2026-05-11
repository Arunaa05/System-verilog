class counter;
  int max;
  int count;
  function void ct();
    if(count == max)
      count=0;
    else
      count++;
  endfunction
endclass
module demo;
initial begin
  counter c=new();
  c.max=3;
  c.count=0;
  repeat(5) begin
  c.ct();
  $display("count=%0d",c.count);
  end
end
endmodule

/* output 
xcelium> run
count=1
count=2
count=3
count=0
count=1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
