// week06_1_sound_library_SoundFile_play
// File-Preference 字型改大一點
// Sketch-Library-ManageLibraries, 找到Sound 安裝它
// File-Examples-Libraries核心函式庫-Sound-soundfile-SimplePlayback
// 參考 這個範例有聲音、有相關的函式可學習參考
import processing.sound.*; // 使用聲音的外掛模組
SoundFile sound; // 宣告 SoundFile 物件變數
void setup(){
  size(500,400); //視窗大小
  sound = new SoundFile(this,"music.mp3");
  // 把老師傳的 music.mp3 拉到程式裡
  sound.play(); // 播放聲音
}
void draw(){

}
