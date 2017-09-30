void mouseDragged() 
{
  if (mouseButton == CENTER) {
    trans_x = trans_x +  mouseX - pmouseX;
    trans_y = trans_y +  mouseY - pmouseY;
  }
}