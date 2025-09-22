// week03_5_pin2_BUTTON_digitalRead_digitalWrite
// 手動按按鈕，看到登慢慢改變 now之後,把 now 變亮
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP); //按鈕button是2號 沒接下去就會拉高
  for(int i=3;i<=13;i++){ //把pin 3,4,5,...,13都設成 OUTPUT
    pinMode(i,OUTPUT);  // 都是可以發光、發亮的
  }
}
int now=3; //現在發亮的,是 pin 3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ // 按下去了
    now = now+1;
    if(now>13) now = 3;
    for(int i=3;i<=13;i++){
      digitalWrite(i,LOW); //先全部清空、變成LOW 不亮
    }
    digitalWrite(now,HIGH); //now 負責亮
    delay(500); // 休息一下
  }
}
