void setup_pulsanti() {




  cp5.addNumberbox("x")
    .setPosition(10, 1*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1) // set the sensitifity of the numberbox
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(100)
    ;

  cp5.addNumberbox("y")
    .setPosition(10, 2*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1) // set the sensitifity of the numberbox
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(100)
    ;

  cp5.addNumberbox("z")
    .setPosition(10, 3*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1) // set the sensitifity of the numberbox
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(200)
    ;

  cp5.addNumberbox("spessore")
    .setPosition(10, 4*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1) // set the sensitifity of the numberbox
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(6)
    .setRange(0, 100)
    ;

  cp5.addNumberbox("n_denti_x")
    .setPosition(10, 5*dy_cp5)
    .setSize(100, 20)
    .setScrollSensitivity(1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(2)
    .setRange(0, 200)
    ;

  cp5.addNumberbox("n_denti_y")
    .setPosition(10, 6*dy_cp5)
    .setSize(100, 20)
    .setScrollSensitivity(1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(2)
    .setRange(0, 200)
    ;

  cp5.addNumberbox("n_denti_z")
    .setPosition(10, 7*dy_cp5)
    .setSize(100, 20)
    .setScrollSensitivity(1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(2)
    .setRange(0, 200)
    ;

  cp5.addNumberbox("screw_a")
    .setPosition(10, 8*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(12)
    .setRange(0, 200)
    ;

  cp5.addNumberbox("screw_s")
    .setPosition(10, 9*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(3.1)
    .setRange(0, 200)
    ;


  cp5.addNumberbox("nut_a")
    .setPosition(10, 10*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(3)
    .setRange(0, 200)
    ;


  cp5.addNumberbox("nut_s")
    .setPosition(10, 11*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1)
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(5.5)
    .setRange(0, 200)
    ;



  /* PER ORA OMETTO SELEZIONE NUMERO DI VITI, UNA PER OGNI DENTE
   
   cp5.addNumberbox("n_viti_x")
   .setPosition(10, 8*dy_cp5)
   .setSize(100, 20)
   .setScrollSensitivity(1)
   .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
   .setValue(2)
   .setRange(0, 200)
   ;
   
   cp5.addNumberbox("n_viti_y")
   .setPosition(10, 9*dy_cp5)
   .setSize(100, 20)
   .setScrollSensitivity(1)
   .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
   .setValue(2)
   .setRange(0, 200)
   ;
   
   cp5.addNumberbox("n_viti_z")
   .setPosition(10, 10*dy_cp5)
   .setSize(100, 20)
   .setScrollSensitivity(1)
   .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
   .setValue(2)
   .setRange(0, 200)
   ;
   
   */

  cp5.addNumberbox("d_foro")
    .setPosition(10, 12*dy_cp5)
    .setSize(100, 20)
    .setMultiplier(0.1) // set the sensitifity of the numberbox
    .setDirection(Controller.HORIZONTAL) // change the control direction to left/right
    .setValue(3.1)
    ;

  // change the trigger event, by default it is PRESSED.
  cp5.addBang("bang")
    .setPosition(30, 13*dy_cp5)
    .setSize(60, 20)
    .setTriggerEvent(Bang.RELEASE)
    .setLabel("   Export .dxf")
    ;
    
}