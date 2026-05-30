// Code your testbench here
// or browse Examples
module function_array;
  int a[3];
  
  function automatic int arr(ref int a[3]);
    
    for(int i=0;i<$size(a);i++)
      a[i]=i*2;
    
  endfunction
  int res;
  
  initial begin
    
    res=arr(a);
    
    foreach(a[i])
      $display("a[%0d] =%0d",i,a[i]);
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

a[0] =0
a[1] =2
a[2] =4

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
