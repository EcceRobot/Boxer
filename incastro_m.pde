void incastro_m(float d, float sp, int n_p, float r) {
  noFill();
  line(0, 0, d/(n_p+2), 0);
  for (int i=1; i<n_p+2; i++) {
    line(i*d/(n_p+2), 0, i*d/(n_p+2), -sp);

    if (i%2==1) {
      line(i*d/(n_p+2), -sp, (i+1)*d/(n_p+2), -sp);
    }
    if (i%2==0) {
      line(i*d/(n_p+2), 0, (i+1)*d/(n_p+2), 0);
    }
  }

  for (int i=1; i<n_p+1; i++) {
    if (i%2==1) {
      ellipse(0.5*d/(n_p+2)+i*d/(n_p+2), -sp/2, r, r);
    }
  }
}

//incastro speciale, più corto ma con denti come se fosse normale (...)

void incastro_m2(float d, float sp, int n_p, float r) {
  noFill();

  d=d+2*sp;

  pushMatrix();
  translate(-sp, 0);
  line(sp, 0, d/(n_p+2), 0);
  for (int i=1; i<n_p+2; i++) {
    line(i*d/(n_p+2), 0, i*d/(n_p+2), -sp);

    if (i%2==1) {
      line(i*d/(n_p+2), -sp, (i+1)*d/(n_p+2), -sp);
    }
    if (i%2==0 && i<n_p+1) {
      line(i*d/(n_p+2), 0, (i+1)*d/(n_p+2), 0);
    } else if(i==n_p+1){
      line(i*d/(n_p+2), 0, d-sp, 0);
    }
  }
    
    
  for (int i=1; i<n_p+1; i++) {
    if (i%2==1) {
      ellipse(0.5*d/(n_p+2)+i*d/(n_p+2), -sp/2, r, r);
    }
  }

  popMatrix();
}