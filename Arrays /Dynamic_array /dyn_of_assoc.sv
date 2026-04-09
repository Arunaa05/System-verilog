module dynamic_of_associative_tb;
  int flower[][string];
  initial
    begin
      flower=new[3];
      flower[0]='{"hibiscus":6,"jasmine":5};
      flower[1]='{"rose":9,"lilly":10};
      flower[2]='{"lotus":2,"sunflower":8};
      foreach(flower[i])
        begin
          foreach(flower[i][j])
            begin
              $display("flower[%0d][%s]=%0d",i,j,flower[i][j]);
            end
        end
    end
endmodule

/*output
flower[0][hibiscus]=6
flower[0][jasmine]=5
flower[1][lilly]=10
flower[1][rose]=9
flower[2][lotus]=2
flower[2][sunflower]=8*/
