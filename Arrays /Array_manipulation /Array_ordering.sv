module array_ordering;
  int array[5]='{4,1,9,3,7};
  initial 
    begin
      array.reverse();
      $display("reverse=%p",array);
      array.sort();
      $display("sort=%p",array);
      array.rsort();
      $display("rsort=%p",array);
       array.shuffle();
      $display("shuffle=%p",array);
    end
endmodule

/*output
reverse='{7, 3, 9, 1, 4}
sort='{1, 3, 4, 7, 9}
rsort='{9, 7, 4, 3, 1}
shuffle='{1, 4, 9, 7, 3}*/
