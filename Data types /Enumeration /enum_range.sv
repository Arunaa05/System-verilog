module enum_tb;
  typedef enum{mango,avacado,banana,fig,orange,apple,papaya}item;
  item a;
  initial begin
    for(int i = 0; i< 7; i++)begin
      a=item'(i);
      $display("a=%0d %0s",a,a.name);
    end
    end
  typedef enum{mango1=5,avacado1,banana1,fig1,orange1,apple1,papaya1}item1;
  item1 b;
  initial begin
    for(int i = 5; i< 12; i++)begin
      b=item1'(i);
      $display("b=%0d %0s",b,b.name);
    end
    end
  typedef enum{mango2,avacado2,banana2,fig2[6],orange2,apple2,papaya2}item2;
  item2 c;
  initial begin
    for(int i = 0; i< 7; i++)begin
      c=item2'(i);
      $display("c=%0d %0s",c,c.name);
    end
    end
  typedef enum{mango3,avacado3,banana3[3]=8,fig3,orange3,apple3,papaya3}item3;
  item3 d;
  initial begin
    for(int i = 0; i< 7; i++)begin
      d=item3'(i);
      $display("d=%0d %0s",d,d.name);
    end
    end
  typedef enum{mango4,avacado4[1:2],banana4,fig4,orange4,apple4,papaya4}item4;
  item4 e;
  initial begin
    for(int i = 0; i< 7; i++)begin
      e=item4'(i);
      $display("e=%0d %0s",e,e.name);
    end
    end
  typedef enum{mango5,avacado5,banana5,fig5,orange5,apple5[0:1]=5,papaya5}item5;
  item5 f;
  initial begin
    for(int i = 0; i< 7; i++)begin
      f=item5'(i);
      $display("f=%0d %0s",f,f.name);
    end
    end
endmodule

output 
a=0 mango
a=1 avacado
a=2 banana
a=3 fig
a=4 orange
a=5 apple
a=6 papaya

b=5 mango1
b=6 avacado1
b=7 banana1
b=8 fig1
b=9 orange1
b=10 apple1
b=11 papaya1

c=0 mango2
c=1 avacado2
c=2 banana2
c=3 fig20
c=4 fig21
c=5 fig22
c=6 fig23

d=0 mango3
d=1 avacado3
d=2 
d=3 
d=4 
d=5 
d=6 

e=0 mango4
e=1 avacado41
e=2 avacado42
e=3 banana4
e=4 fig4
e=5 orange4
e=6 apple4

f=0 mango5
f=1 avacado5
f=2 banana5
f=3 fig5
f=4 orange5
f=5 apple50
f=6 apple51
