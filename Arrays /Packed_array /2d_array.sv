module packed_array;
  logic [3] [2] arr_2D;
  initial 
    begin
       foreach(arr_2D[i])
        begin
          arr_2D[i] = i;
          $display("arr_2D[%0d] = %d",i,arr_2D[i]);
        end
      for(int i=0; i<$size(arr_2D);i++)
        begin
          arr_2D[i] = 3'(i);  //convert i to 3 bit value
          $display("arr_2D[%0d] = %b",i,arr_2D[i]);
        end
    end
endmodule
/*output
arr_2D[0] = 0
arr_2D[1] = 1
arr_2D[2] = 2
arr_2D[0] = 000
arr_2D[1] = 001
arr_2D[2] = 010 */
