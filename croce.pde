/**
float pos_x, 
float pos_y, 
float screw_s, sezione della vite 
float screw_a, altezza della vite
float nut_s, sezione del dato (misura della chiave che lo stringe)
float nut_a, altezza del dado (c'è uno standard)
*/

void croce(float pos_x, float pos_y, float screw_s, float screw_a, float nut_s, float nut_a){
  
  
  //1
  line(pos_x, pos_y, pos_x, pos_y+screw_a/2);
  
  //2
  line(pos_x, pos_y+screw_a/2, pos_x-(nut_s-screw_s)/2, pos_y+screw_a/2);
  
  //3
  line(pos_x-(nut_s-screw_s)/2, pos_y+screw_a/2, pos_x-(nut_s-screw_s)/2, pos_y+screw_a/2+nut_a);
  
  //4
  line(pos_x-(nut_s-screw_s)/2, pos_y+screw_a/2+nut_a, pos_x, pos_y+screw_a/2+nut_a);
  
  //5
  line(pos_x, pos_y+screw_a/2+nut_a, pos_x, pos_y+screw_a+nut_a);
  
  //6
  line(pos_x, pos_y+screw_a+nut_a, pos_x+screw_s, pos_y+screw_a+nut_a);
  
  //7
  line(pos_x+screw_s, pos_y+screw_a+nut_a, pos_x+screw_s, pos_y+screw_a/2+nut_a);
  
  //8
  line(pos_x+screw_s, pos_y+screw_a/2+nut_a, pos_x+screw_s+(nut_s-screw_s)/2, pos_y+screw_a/2+nut_a);
  
  //9
  line(pos_x+screw_s+(nut_s-screw_s)/2, pos_y+screw_a/2+nut_a, pos_x+screw_s+(nut_s-screw_s)/2, pos_y+screw_a/2);
  
  //10
  line(pos_x+screw_s+(nut_s-screw_s)/2, pos_y+screw_a/2, pos_x+screw_s, pos_y+screw_a/2);
  
  //11
  line(pos_x+screw_s, pos_y+screw_a/2, pos_x+screw_s, pos_y);
  
}