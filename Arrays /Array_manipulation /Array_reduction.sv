module array_reduction;
  int array[4] = '{1, 2, 3, 4};
  
  initial 
    begin
      $display("sum of elements = %0d",array.sum());
      $display ("product = %0d", array.product());
    $display ("and     = %0d", array.and());
    $display ("or      = %0d", array.or());
    $display ("xor     = %0d", array.xor());
  end
endmodule

/*output
sum of elements = 10
product = 24
and     = 0
or      = 7
xor     = 4*/
