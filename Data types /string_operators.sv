module string_tb;
  string str1 = "parimala";
  string str2 = "annadurai";
  string str3=" ";
 initial
    begin
      $display("%s",str1);
      foreach(str1[i])
      begin
        $display("%s",str1[i]);
      end
      begin
        if(str1==str2)                             //equality operator
          $display("str1=%s is equal to str2=%s",str1,str2);
        else                                       //inequality operator
          $display("str1=%s is not equal to str2=%s",str1,str2);
      end
       begin
         str3={str1,str2};                        //concatenation operator
         $display("str3=%s",str3);
       end
      begin
        $display("%s",{3{str1}});                 //Replication operator
      end
       begin
         $display("str1[3]=%s str2[2]=%s",str1[3],str2[6]); //Indexing operator
      end
    end
endmodule




module string_tb;
  string str1 = "100";
  string str2 = "200";
  initial
    begin
      $display("%s",str1);
      foreach(str1[i])
      begin
        $display("%s",str1[i]);
      end
      begin
        if(str1<=str2)                                //comparison operator
          $display("str1=%s is less than str2=%s",str1,str2);
        else
          $display("str1=%s is greater than str2=%s",str1,str2);
      end
      begin
        if(str1>=str2)                               //comparison operator
          $display("str1=%s is greater than str2=%s",str1,str2);
        else
          $display("str1=%s is lesser than str2=%s",str1,str2);
      end
       
    end
endmodule


    
    
