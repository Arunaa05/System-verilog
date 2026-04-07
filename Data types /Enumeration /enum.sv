module enum_tb;
  typedef enum{hippo,rhino,cat,dog,snake}animals;
  initial
    begin
    animals a1;
    a1=cat;          //enum = enum
     $display("name=%0s",a1.name());
    a1=2;           //enum=int(not equal)//warning
     $display("name=%0s",a1.name());
    a1=animals'(1); //enum=enum'(int)
     $display("name=%0s",a1.name());
    a1==1;          //enum==int 
     $display("name=%0s",a1.name());
  end
endmodule
