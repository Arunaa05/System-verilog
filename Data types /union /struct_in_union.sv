module union_tb;
 typedef union packed{
    bit [31:0] a;
    struct packed{
      bit[7:0] byte1;
      bit[7:0] byte2;
      bit[7:0] byte3;
      bit[7:0] byte4;
    }word;
 }data_u;
  data_u data; 
  
  initial begin
    data.word=32'h87654321;
    $display("a=%0d",data.a);
    $display("byte1=%p",data.word.byte1);
    $display("byte1=%p",data.word.byte2);
    $display("byte1=%p",data.word.byte3);
    $display("byte1=%p",data.word.byte4);
  end
endmodule
