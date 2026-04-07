module unpacked_tb;
  struct{
    int id;
    string name;
    int marks;
  }student;
  initial 
    begin
      student='{6,"Arun",97};
      $display("ïd=%0d,name=%s,marks=%0d",student.id,student.name,student.marks);
      
      student.id=12;
      student.name="kathir";
      student.marks=88;
      $display("%p",student);
    end
endmodule
