// week03_8_processing_mouse_serial_write_space
import processing.serial.*; //使用Serial外掛
Serial myPort;
void setup(){
  size(400,400);
  myPort = new Serial(this,"COM5",9600);
  //COM? 要用裝置管理員查用的是多少
}
void mousePressed(){
  if(mouseButton==LEFT) myPort.write('b'); //左鍵傳b
  if(mouseButton==RIGHT) myPort.write(' '); //右鍵傳空白
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}
