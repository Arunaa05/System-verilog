interface signals;
  logic p,q;
  logic r;
  
  modport dut_MP(input p,input q,output r);
  
  modport tb_MP(output p,output q,input r);
  
endinterface
