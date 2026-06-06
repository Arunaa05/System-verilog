class Stack #(type a = int);
  a items[10]; 
  int index = 0;

  function void param(a val);
    items[index++] = val;
  endfunction
  
  function void display();
    $display("type = %s, index = %0d, values=%p", $typename(a), index,items[index-1]);
  endfunction
endclass

module tb;
  initial begin
    Stack #(string) s1 = new(); 
    Stack #(real)   s2 = new(); 

    s1.param("Hello");
    s2.param(3.1415);

    s1.display();
    s2.display();
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

type = string, index = 1, values="Hello"
type = real, index = 1, values=3.1415

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
