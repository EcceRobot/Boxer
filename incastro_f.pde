void incastro_f(float d, float sp, int n_p) {
  line(0, 0, d/(n_p+2), 0);
  for (int i=1; i<n_p+2; i++) {
    line(i*d/(n_p+2), 0, i*d/(n_p+2), sp);
    
    if (i%2==0) {
      line(i*d/(n_p+2), 0, (i+1)*d/(n_p+2), 0);
      
      
   
      
    }
    if (i%2==1) {
      line(i*d/(n_p+2), sp,i*d/(n_p+2)+(d/(n_p+2)-screw_s)/2, sp);
      
      croce(i*d/(n_p+2)+(d/(n_p+2)-screw_s)/2 , sp, screw_s, screw_a-sp, nut_s, nut_a);
      
      line((i+1)*d/(n_p+2), sp,i*d/(n_p+2)+(d/(n_p+2)+screw_s)/2, sp);
      
    }
  }
}