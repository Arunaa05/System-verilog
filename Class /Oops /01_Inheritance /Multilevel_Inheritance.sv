class base_class;
  bit [31:0] b;
  
  function void display_b();
    $display("base class: Value of data = %0h", b);
  endfunction
endclass

class c1_class extends base_class;
  bit [31:0] c1;
  
  function void display_c1();
    $display("child class 1: Value of data = %0h", c1);
  endfunction
endclass

class c2_class extends base_class;
  bit [31:0] c2;
  
  function void display_c2();
    $display("child class 2: Value of data = %0h", c2);
  endfunction
endclass

class cA_class extends c1_class;
  bit [31:0] cA;
  
  function void display_cA();
    $display("child A class: Value of data = %0h", cA);
  endfunction
endclass

class cB_class extends cA_class;
  bit [31:0] cB;
  
  function void display_cB();
    $display("child1 B class: Value of data = %0h", cB);
  endfunction
endclass

module multilevel_inheritance;
  initial begin
    cB_class cB_t;
    cB_t = new();
    cB_t.b = 2;
    cB_t.c1 = 4;
    cB_t.cA = 6;
    cB_t.cB = 8;
    //cB_t.data_c2 = 3; 
    // Not possible as child_B_trans is not child class of child2_trans.
    
    cB_t.display_b();
    cB_t.display_c1();
    cB_t.display_cA();
    cB_t.display_cB();
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

base class: Value of data = 2
child class 1: Value of data = 4
child A class: Value of data = 6
child1 B class: Value of data = 8

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
