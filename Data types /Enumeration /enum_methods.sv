module enum_tb;
  typedef enum{hippo,rhino,cat,dog,snake}animals;
  initial
    begin
    animals a1;
    a1=cat;
    $display("first=%0d",a1.first());
    $display("last=%0d",a1.last());
    $display("prev=%0d",a1.prev());
    $display("next=%0d",a1.next());
    $display("num=%0d",a1.num());
    $display("name=%0s",a1.name());
  end
endmodule

output
//first=0
//last=4
//prev=1
//next=3
//num=5
//name=cat
