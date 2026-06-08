// Code your testbench here
// or browse Examples
class parent_class;
  int a=5,b=6;
  
  virtual function void display();
    $display("the value of a=%0d and b=%0d",a,b);
  endfunction 
endclass

class c1 extends parent_class;
  int c=3,d;
  
  function void display();
    d=c+1;
    $display("the value of d=%0d",d);
  endfunction
endclass

class c2 extends parent_class;
  int e,f=7,g=9;
  
  function void display();
    e=f*g;
    $display("the value of e=%0d",e);
  endfunction
endclass             

module polymorphism;
  
  parent_class p1;
  c2 t;
  c1 l;
  
  initial begin
    
  t=new();
  p1=t;
  p1.display();
  l=new();
  p1=l;
  p1.display();
  p1=new();
  p1.display();
    
  end
  
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

the value of e=63
the value of d=4
the value of a=5 and b=6

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
