module queue_tb;
  string names[$];
  logic[7:0]bt[$];
  int q1[$];
  int q2[$:5];
  int a;
  initial
    begin
      q1='{20,25,30,35};
      q2='{0,1,2,3,4,5,6,7,8};
      $display("q1=%p \nq2=%p",q1,q2);
      
      names='{"arun","aadhi","aravind"};
      $display("names=%p",names[1:2]);  //subset
      
      names=names[0:$];
      $display("names=%p",names);   //print 0 to last index 
      
      q2=q1;
      $display("q2=%p",q2);  //copy q1 to q2
      
      q1=q2;
      $display("q1=%p",q1);  //copy q2 to q1
      
      a=q1[2];
      $display("a=%p",a);  //copy index 2 of q1 to a
      
      a=q2[$];
      $display("a=%p",a);  //copy last index of q2 to a
      
      q2={40,q2};
      $display("q2=%p",q2);  //Put 40 as the first element of q2
      
      q2={q2,15};
      $display("q2=%p",q2);  //append 15 to q2
      
      q1[1]=15;
      $display("q1=%p",q1);  // Replace element at index 1 with 15
      
      q2.insert(5,45);
      $display("q2=%p",q2);
      
      q2.pop_front();
      $display("q2=%p",q2);
      
      q2.pop_back();
      $display("q2=%p",q2);
      
      names.push_front("paaru");
      $display("names=%p",names);
      
      names.push_back("annadurai");
      $display("names=%p",names);
      
      q2=q2[1:$];
      $display("q2=%p",q2);  
      
      names.delete(1);
      $display("names=%p",names);
    end
endmodule

/*output
q1='{20, 25, 30, 35} 
q2='{0, 1, 2, 3, 4, 5}
names='{"aadhi", "aravind"}
names='{"arun", "aadhi", "aravind"}
q2='{20, 25, 30, 35}
q1='{20, 25, 30, 35}
a=30
a=35
q2='{40, 20, 25, 30, 35}
q2='{40, 20, 25, 30, 35, 15}
q1='{20, 15, 30, 35}
q2='{40, 20, 25, 30, 35, 45}
q2='{20, 25, 30, 35, 45}
q2='{20, 25, 30, 35}
names='{"paaru", "arun", "aadhi", "aravind"}
names='{"paaru", "arun", "aadhi", "aravind", "annadurai"}
q2='{25, 30, 35}
names='{"paaru", "aadhi", "aravind", "annadurai"}*/
