class Transaction;
  static int object_count = 0;
  int packet_id; 

  function new();
    object_count++;           
    packet_id = object_count;  
  endfunction
  
  static function int get_count();
    return object_count;
  endfunction
endclass

module tb;
  initial begin
    int current_total;
    Transaction t1;
    Transaction t2;
    
    current_total = Transaction::get_count();
    $display("Total objects at start: %0d", current_total); 

    t1 = new();
    t2 = new();
    
    
    current_total = Transaction::get_count();
    $display("Total objects created: %0d", current_total);  
  end
endmodule

/*output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Total objects at start: 0
Total objects created: 2

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
