// week03_7_processing_mouse_serial_write
import processing.serial.*; //使用Serial外掛
Serial myPort;
void setup(){
  size(400,400);
  myPort = new Serial(this,"COM5",9600);
  //COM? 要用裝置管理員查用的是多少
}
void mousePressed(){
  myPort.write('b'); //用USB傳字母b
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}
