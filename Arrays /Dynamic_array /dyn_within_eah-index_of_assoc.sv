module dynamic_index_associative_tb;
  typedef int item[];
  initial
    begin
      item fruits[string];
      fruits["apple"]=new[5];
      fruits["apple"]='{6,5,4,3,2};
      foreach(fruits[i])
        begin
          foreach(fruits[i][j])
            begin
              $display("fruit[%s][%0d]=%0d",i,j,fruits[i][j]);
            end
        end
    end
endmodule

/*output
fruit[apple][0]=6
fruit[apple][1]=5
fruit[apple][2]=4
fruit[apple][3]=3
fruit[apple][4]=2*/
