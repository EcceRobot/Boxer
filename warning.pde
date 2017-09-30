void warning() {

  //aggiungere condizio foro maggiore del passo del dente
  if (d_foro > spessore) {
    pushStyle();
    if (millis()/1000%2==0) {
      fill(#FF0000);
      rect(0, height-20, 120, 30);
      fill(255);
      textSize(10);
      text("ERRORE", 40, height-10);
    }
    popStyle();
  }
}