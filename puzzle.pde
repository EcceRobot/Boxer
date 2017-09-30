// il tipo 1 è femmina sull'orizzontael e emaschio sulla verticale.
// il tipo 2 è all'opposto


void puzzle_1(float pos_x, float pos_y, float larghezza, float altezza, float spessore, float r_foro, int n_denti_largh, int n_denti_alt) {
    
  
  n_denti_largh = 2*(n_denti_largh-1)+1;
  n_denti_alt = 2*(n_denti_alt-1)+1;

    pushMatrix();

    translate(pos_x, pos_y);
    incastro_f(larghezza, spessore, n_denti_largh);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_m(altezza, spessore, n_denti_alt, r_foro);


    translate(altezza, 0);
    rotate(PI/2);
    incastro_f(larghezza, spessore, n_denti_largh);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_m(altezza, spessore, n_denti_alt, r_foro);

    popMatrix();
}


void puzzle_2(float pos_x, float pos_y, float larghezza, float altezza, float spessore, float r_foro, int n_denti_largh, int n_denti_alt) {

  
  n_denti_largh = 2*(n_denti_largh-1)+1;
  n_denti_alt = 2*(n_denti_alt-1)+1;

    pushMatrix();

    translate(pos_x, pos_y);
    incastro_m(larghezza, spessore, n_denti_largh, r_foro);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_f(altezza, spessore, n_denti_alt);


    translate(altezza, 0);
    rotate(PI/2);
    incastro_m(larghezza, spessore, n_denti_largh, r_foro);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_f(altezza, spessore, n_denti_alt);

    popMatrix();
}

void puzzle_ff(float pos_x, float pos_y, float larghezza, float altezza, float spessore, float r_foro, int n_denti_largh, int n_denti_alt) {

  
  n_denti_largh = 2*(n_denti_largh-1)+1;
  n_denti_alt = 2*(n_denti_alt-1)+1;

    pushMatrix();

    translate(pos_x, pos_y);
    incastro_f(larghezza, spessore, n_denti_largh);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_f(altezza, spessore, n_denti_alt);


    translate(altezza, 0);
    rotate(PI/2);
    incastro_f(larghezza, spessore, n_denti_largh);


    translate(larghezza, 0);
    rotate(PI/2);
    incastro_f(altezza, spessore, n_denti_alt);

    popMatrix();
}

void puzzle_mm(float pos_x, float pos_y, float larghezza, float altezza, float spessore, float r_foro, int n_denti_largh, int n_denti_alt) {
    
  
  n_denti_largh = 2*(n_denti_largh-1)+1;
  n_denti_alt = 2*(n_denti_alt-1)+1;

    pushMatrix();

    translate(pos_x, pos_y);
    incastro_m(larghezza, spessore, n_denti_largh, r_foro);

    translate(larghezza, 0);
    rotate(PI/2);
    incastro_m2(altezza, spessore, n_denti_alt, r_foro);


    translate(altezza, 0);
    rotate(PI/2);
    incastro_m(larghezza, spessore, n_denti_largh, r_foro);

    translate(larghezza, 0);
    rotate(PI/2);
    incastro_m2(altezza, spessore, n_denti_alt, r_foro);
    
    popMatrix();
}