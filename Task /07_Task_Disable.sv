task alu(input logic [4:0]a,b,output logic [4:0]res);
  
  begin:NAND
    res=~(a & b);
    disable NAND;
    $display("Nand a=%b b=%b res=%b",a,b,res);
  end
  begin:NOR
    res=~(a | b);
    $display("Nor a=%b b=%b res=%b",a,b,res);
  end
  begin:XOR
    res=a ^ b;
    $display("Xor a=%b b=%b res=%b",a,b,res);
  end
  begin:AND
    res=(a & b);
    disable alu;
    $display("And a=%b b=%b res=%b",a,b,res);
  end
  begin:OR
    res=(a | b);
    $display("Or a=%b b=%b res=%b",a,b,res);
  end
  begin:NOT
    res=~(b);
    $display("Not b=%b res=%b",b,res);
  end
endtask
  module Disable_task;
    logic [4:0] out, x, y;

  initial begin
    x= $random;
    y= $random;
    alu(x,y,out);
    
  end

endmodule

/*output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Nor a=00100 b=00001 res=11010
Xor a=00100 b=00001 res=00101
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
