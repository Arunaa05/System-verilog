module union_tb;
  union packed{
    bit [31:0] a;   // datatype & size should be same
    bit [3:0][7:0]b;
  }data;
  initial begin
  data.a=32'h12345678;
    $display("a=%0d",data.a);
    $display("b=%p",data.b);
  end
endmodule
  
