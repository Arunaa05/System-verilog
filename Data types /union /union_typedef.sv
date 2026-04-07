module tb;
typedef union packed {
  bit [31:0] a;
  bit [1:0][15:0] b;
  bit [3:0][7:0] c;
} bt;
bt data;
initial begin
  data.a = 32'h11223344;
  $display("a= %h", data.a);
  $display("b= %p", data.b);
  $display("c = %p", data.c);
end
endmodule
