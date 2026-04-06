module typedef_tb;
  typedef enum{water_apple,avacado,fig,banana} fruits;
  typedef bit[7:0] bt;
  initial begin
    fruits f1;
    bt b1;
    f1=avacado;
    b1='haf;
    $display("f1=%0s b1=%b",f1.name(),b1);
  end
endmodule

output
//f1=avacado 
//a=10101111
