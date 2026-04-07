module packed_tb;
  struct packed{
    bit[7:0]a;
    bit[3:0]b; 
    bit c;
  }bt;
  initial 
    begin
      bt='{8'hfa,4'he,2};
      $display("%p",bt);
      
      bt.b=4'h2;
      $display("%p",bt.b);
      $display("%p",bt);
      
      bt.c=9;
      $display("%p",bt.c);
      $display("%p",bt);
    end
endmodule
