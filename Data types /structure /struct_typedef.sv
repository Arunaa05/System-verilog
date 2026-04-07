module tb;
  typedef struct{
    int num;
    string fruit; 
    byte expiry;
  }item;
  initial 
    begin
      item var1;
      item var2;
      
      var1='{3,"Papaya",7};
      $display("num=%0d fruit=%s expiry=%0d",var1.num,var1.fruit,var1.expiry);
      var2='{6,"watermelon",15};
      $display("num=%0d fruit=%s expiry=%0d",var2.num,var2.fruit,var2.expiry);
     
      var1=var2;
      $display("var1=%p var2=%p",var1,var2);
      
      var1='{default:0,num:1};
      $display("var1=%p",var1);
      
      var1.fruit="banana";
      var1.expiry=4;
      $display("var1=%p",var1);
      
    end
endmodule
      
  
  
