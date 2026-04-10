module priority_if;
  int a=5,b=9;
  initial
    begin
      $display("priority if with true and else part");
      priority if(a>3)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else
        $display("else condition");
     end
endmodule

/*output
priority if with true and else part
condition 1*/

module priority_if;
  int a=5,b=9;
  initial
    begin
      $display("priority if with no else/true part");
      priority if(a<3)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else if(a>b)
        $display("condition 3");
     end
endmodule

/*output
priority if with no true/ else part
xmsim: *W,NOCOND: Priority if violation:  Every if clause was false.*/

