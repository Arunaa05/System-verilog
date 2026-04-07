module union_tb;
  union {
    bit [7:0] a;
    byte b;
  }data;
  initial begin
  data.a=8'h24;
  $display("a=%0d",data.a);
  $display("b=%p",data.b);
  end
endmodule
  
