module array_tb;
  typedef struct{
    int id;
    string name; 
  }student;
student arr[6];
student dyn[];
student asso[int];
student queue[$];
initial 
  begin
   foreach(arr[i])
     begin
        arr[i].name = $sformatf("arr%0d", i);
        arr[i].id = i+2;
      end
        $display("fixed_array = %p",arr);
        dyn = arr;
        $display("dynamic_array = %p",dyn);
        asso[0] = '{name:"arm",id:12};
        asso[5] = '{name:"orm",id:11};
        $display("Associative_array = %p",asso);
      
        queue.insert(0,'{name:"arm",id:12});
        $display("Queue = %p",queue);
  end
endmodule
