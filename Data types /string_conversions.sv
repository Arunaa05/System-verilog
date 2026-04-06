module string_tb;
  string str1="12345";
  string str2="1F";
  string str3="25";
  string str4="0110";
  string str5="14.45";
  int num;
  real r;
  initial begin
    //string to number
    num=str1.atoi();
    $display("num=%0d",num);
    num=str2.atohex();
    $display("num=%0d",num);
    num=str3.atooct();
    $display("num=%0d",num);
    num=str4.atobin();
    $display("num=%0d",num);
    r=str5.atoreal();
    $display("r=%0f",r);
  end
endmodule

module strings_tb;
  string str1;
  string str2;
  string str3;
  string str4;
  string str5;
  int n;
  real r;
  initial begin
    //number to string
    n=45;
    str1.itoa(n);
    $display("string=%s",str1);
    n=31;
    str2.hextoa(n);
    $display("string=%s",str2);
    n=21;
    str3.octtoa(n);
    $display("string=%s",str3);
    n=6;
    str4.bintoa(n);
    $display("string=%s",str4);
    r=14.450000;
    str5.realtoa(r);
    $display("string=%s",str5);
  end
endmodule

output
//num=12345
//num=31
//num=21
//num=6
//r=14.450000
//string=45
//string=1f
//string=25
//string=110
//string=14.45
