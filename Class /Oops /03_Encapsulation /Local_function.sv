class packet;
  bit [31:0] data;
  local int id;
  
  function new();
     data = 55;
     id = 6;
     display();
  endfunction
    

  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module local_variable;
  packet pkt;
  
  initial begin
    
    pkt = new();
    // pkt.display();
    //Access to local member 'display' in class 'packet' is not allowed here.
  end
endmodule

/*output
data = 55 and id = 6
*/
