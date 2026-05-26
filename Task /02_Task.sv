// Code your testbench here
// or browse Examples
module task_exapmle;
  
  task compare;
    input int a,b;
    output bit [1:0]done;
    
    if(a>b)
      begin
        done=2'h1;
        //return;
        //$display("a>b comparison completed");
      end
    if(a<b)
      begin
        done=2'h2;
        //return;
        //$display("a<b comparison completed");
      end
    if(a==b)
      begin
        done=2'h3;
        //return;
        //$display("a==b comparison completed");
      end
  endtask
  
  initial begin
    int x,y;
    bit [1:0]res;
    
    repeat(10)begin
      x=$urandom_range(2,8);
      y=$urandom_range(2,8);
      
      $display("x=%0d y=%0d",x,y);
      
      compare(x,y,res);
      if(res==2'h1)
        $display("x is greater than y");
      if(res==2'h2)
        $display("a is lesser than b");
      if(res==2'h3)
        $display("a is equal to b");
    end
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
x=2 y=5
a is lesser than b
x=8 y=5
x is greater than y
x=8 y=2
x is greater than y
x=3 y=6
a is lesser than b
x=8 y=7
x is greater than y
x=4 y=7
a is lesser than b
x=5 y=4
x is greater than y
x=3 y=4
a is lesser than b
x=2 y=3
a is lesser than b
x=3 y=2
x is greater than y
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
