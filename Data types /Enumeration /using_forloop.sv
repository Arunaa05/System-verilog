module enumeration;
  typedef enum{yellow=3, black , blue, turquoise, pink}clr;
  initial begin
    clr colour;
    for (colour = colour.first(); ; colour = colour.next())
     begin
       $display("colour=%0d |colour name = %s",colour, colour.name);
       if(colour == colour.last())
      break;
     end
  end
endmodule
