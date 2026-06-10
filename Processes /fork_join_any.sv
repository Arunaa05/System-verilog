module fork_join_any();
                                
  string a, b, c, d; 
  
  initial begin
    
    $display("[%0t] Starting of fork_join_any", $time); 
                                            
    a = "four";                             
    c = "five";                  
    
    
    fork
      
      begin
        #0 $display("[%0t]Values of a =%0s,c =%0s", $time, a, c);    
        
        begin                   
          b <= a;                
          #1 $display("[%0t]Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
        end
      end
      
      fork
        begin
        
          d<="seven";
         #2 $display("[%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
        end
      join
    join_any

    #1 $display("[%0t]Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);                                
    begin                      
      $monitor("[%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d); 
    end
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

[0] Starting of fork_join_any
[0]Values of a =four,c =five
[1]Values of a =four,b =four,c =five,d =seven
[2] Values of a =four,b =four,c =five,d =seven
[2]Values of a =four,b =four,c =five,d =seven
[2] Values of a =four,b =four,c =five,d =seven

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
