class static_counter;
  int auto_count=0;
  static int static_count=0;

  function void counter();    
    auto_count++;
    static_count++;
  endfunction

endclass


module tb;

  initial begin
    static_counter s1=new();
    static_counter s2=new();
    static_counter s3=new();
    
    s1.counter();
    s2.counter();
    s3.counter();
    
    $display("s1.auto_count=%0d | s1.static_count=%0d",s1.auto_count,s1.static_count);
    $display("s2.auto_count=%0d | s2.static_count=%0d",s2.auto_count,s2.static_count);
    $display("s3.auto_count=%0d | s3.static_count=%0d",s3.auto_count,s3.static_count);
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

s1.auto_count=1 | s1.static_count=3
s2.auto_count=1 | s2.static_count=3
s3.auto_count=1 | s3.static_count=3

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
