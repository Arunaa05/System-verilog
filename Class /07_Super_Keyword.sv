class base_class;
  string fan;
  string switch;

  function void display();    
    switch="ON";
    $display("Here using super keyword we can get both display() methods");
    $write("switch is %s " ,switch);
  endfunction:display

endclass

class sub_class extends base_class;
  string fan="ON";
  
  function void display();
    super.display; 
    $write("that's why fan is %s \n" ,fan);
  endfunction:display

endclass

module super_keyword;
  sub_class s1;  

  initial begin
    s1 =new();  
    s1.display();  
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Here using super keyword we can get both display() methods
switch is ON that's why fan is ON 

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
