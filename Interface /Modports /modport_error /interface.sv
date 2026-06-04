interface signals;
  
  logic p,q;
  logic r;
  
  modport dut_MP(input q,output r);             // Here p is not given, not declared as input  
  
  modport tb_MP(output p,output q,input r);
  
endinterface
