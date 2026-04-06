module string_tb;
  string str1 = "Aruna";
  string str2 = "ABI";
  string str3="paaru";
  initial
    begin
      $display("%s",str1);
      foreach(str1[i])
      begin
        $display("%s",str1[i]);
      end
      $display("%d",str1.len());  
      $display("%d",str2.len());
      $display("%s",str1.tolower());
      $display("%s",str2.tolower());
      $display("%s",str3.toupper()); 
      str1.putc(4,"z");
      $display("%s",str1);
      $display("%s",str2.getc(1));
      $display("%s",str3.substr(0,3));
      str1.compare(str2);              //case matters
      $display("%d",str1.compare(str2));//return 0 if equal , return 1 if A > B , return -1 if A < B 
      str1.icompare(str2);
      $display("%d",str1.icompare(str2));//ignore case
    end
endmodule


output 
//Aruna
//A
//r
//u
//n
//a
// 5
// 3
//aruna
//abi
//PAARU
//Arunz
//B
//paar
// 1
// 1
    
