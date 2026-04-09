module if_else;
  byte a=7;
  byte b=9;
  initial 
    begin
      if(a>3)
        $display("condition_1");
      else if(a<b)
        $display ("condition_2");
      else if(a!=b)
        $display ("condition_3");
      else
        $display ("else_codition");
  end
endmodule

/*output
condition_1*/
