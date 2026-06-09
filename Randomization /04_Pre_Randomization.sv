class packet;

  rand bit [3:0] addr;
  bit [2:0]a;
  bit cons_en;
  
  constraint c1 { addr<a; }
  
  function void pre_randomize();
    $display("\n pre_randomize()");
    a=5;
    $display("a=%d",a);
    
    if(cons_en)
      begin
        $display("constraint enabled");
        c1.constraint_mode(1);
      end
    else
      begin
        $display("constraint disabled");
        c1.constraint_mode(0);
      end
        
  endfunction

endclass

module tb;
  packet p;

  initial begin
    p = new();
    p.cons_en=1;
    if(p.randomize())
        $display("addr = %0d", p.addr);
    else begin
      $display("Randomization failed");
    end
    p.cons_en=0;
    if(p.randomize())
        $display("addr = %0d", p.addr);
    else
      begin
      $display("Randomization failed");
      end
    p.cons_en=1;
    if(p.randomize())
        $display("addr = %0d", p.addr);
    else
      $display("Randomization failed");
    
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

 pre_randomize()
a=5
constraint enabled
addr = 0

 pre_randomize()
a=5
constraint disabled
addr = 8

 pre_randomize()
a=5
constraint enabled
addr = 4

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
