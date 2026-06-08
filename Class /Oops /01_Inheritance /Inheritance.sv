// Code your testbench here
// or browse Examples
class parent_class;
  bit [31:0] data;
  
  function void display_p();
    $display("Value of data = %0h", data);
  endfunction
endclass

class child_class extends parent_class;
  int id;
  
  function void display_c();
    $display("Value of id = %0h", id);
  endfunction
endclass

module class_example;
  initial begin
    child_class c_tr;
    c_tr = new();
    c_tr.data = 5; // child class is updating property of its base class
    c_tr.id = 1;
    
    c_tr.display_p(); // child class is accessing method of its base class
    c_tr.display_c();
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Value of data = 5
Value of id = 1

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
