//BoxerProject



/**
 Problematiche note:
 - alla partenza, uno dei puzzle mostra una sbavatura se ha zero denti
 - si possono inserire delle opzioni: dado (com'è ora), vite legno (senza scasso), chiodo (senza scasso né foro)
 - selezionare lati non standard
 - zoom [posso considerarlo risolto?]
 - numero di viti
 - anteprima 3D
 - ridondanza linee di pezzi confinanti
 - sede dado e scasso per vite
 - dimensione dado a scelta multipla?
 */


import controlP5.*;
import processing.dxf.*;
import java.util.*;

ControlP5 cp5;

float distanza = 30;

public float x = 100;
public float y = 200;
public float z = 300;
public float spessore = 4;
public int n_denti_x = 5;
public int n_denti_y = 5;
public int n_denti_z = 5;
public float n_viti_x = 2;
public float n_viti_y = 2;
public float n_viti_z = 2;
public float d_foro = 2;
public float nut_a = 3;
public float nut_s = 5.5;
public float screw_a = 20;
public float screw_s = 3;

// interspazio tra pulsanti
int dy_cp5 = 47;

float zoom = 1;
float trans_x, trans_y;
boolean record_dxf = false;



void setup() {
  size(800, 650, P3D);
  //noStroke();
  cp5 = new ControlP5(this);
  setup_pulsanti();
}


void draw() {
  background(150);

  //esploso 
  pushMatrix();

  //zoom utente e trascinamento
  scale(zoom);
  translate(trans_x, trans_y);

  translate(120+10+spessore, 10+x);

  if (record_dxf == true) {
    beginRaw(DXF, "./exported_dxf/box_"+year()+nf(month(), 2)+nf(day(), 2)+nf(hour(), 2)+nf(minute(), 2)+nf(second(), 2)+".dxf"); // Start recording to the file
  }


  stroke(#000000);
  //rect(0, 0, x, y);
  stroke(#00FF00);
  puzzle_ff( 0, 0, x, y, spessore, d_foro, n_denti_x, n_denti_y);

  stroke(#000000);
  //rect(x, 0, z, y);
  stroke(#00FF00);
  puzzle_1( x, 0, z-2*spessore, y, spessore, d_foro, n_denti_z, n_denti_y);

  stroke(#000000);
  //rect(x+z, 0, x, y);
  stroke(#00FF00);
 puzzle_ff( x+z-2*spessore, 0, x, y, spessore, d_foro, n_denti_x, n_denti_y);

  stroke(#000000);
  //rect(x+z+x, 0, z, y);
  stroke(#00FF00);
  puzzle_1( x+z+x-2*spessore, 0, z-2*spessore, y, spessore, d_foro, n_denti_z, n_denti_y);

  stroke(#000000);
  //rect(x, -x, z, x);
  stroke(#00FF00);
  puzzle_mm( x, -x, z-2*spessore, x, spessore, d_foro, n_denti_z, n_denti_x);
  
  stroke(#000000);
  //rect(x, y, z, x);
  stroke(#00FF00);
  puzzle_mm( x, y, z-2*spessore, x-2*spessore, spessore, d_foro, n_denti_z, n_denti_x);

  if (record_dxf == true) {
    endRaw();
    record_dxf = false; // Stop recording to the file
  }

  popMatrix();
  //fine esploso

  //divisorio controlli/anteprime
  stroke(255);
  line(120, 0, 120, height); 


  //anteprima volume
  /*
  pushMatrix();
   translate(600+x/2, 0.7*height-y/2, -z/2);
   fill(240, 100);
   rotateX(-PI/12);
   rotateY(PI/12);
   box(x, y, z);
   popMatrix();
   */

  //aggiunte
  warning();
  credits(700, 590);
}