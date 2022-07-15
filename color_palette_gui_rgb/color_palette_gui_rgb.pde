//PImage f;
import controlP5.*;
import java.awt.Color;
PrintWriter file; 
ControlP5 slider;
int slider1;
float r_clicked, g_clicked, b_clicked;
String tcr,tcg,tcb;
boolean clicked_in_colorwheel = true; //flag as to whether the mouse is clicked inside of the colorwheel
int slider_width, slider_height, slider_x, slider_y;
int counter = 0; // for counting the total clicks (the number you choose the color)

// you can choose the initial background color and the csv file name here.
int background_init_color = 200;
String csv_file_name = "test.csv";


void settings(){
  //if you want to use image
  //f = loadImage("colorwheel.jpg");
  //size(f.width, f.height);
  
  size(800, 800);
}

void setup(){
  //if you want to use image
  //image(f,0,0);
  
  // default fps is 1/60 but deliberately slow it down to 1/10 
  frameRate(10);
  
  int hue_scale = 360;
  int saturation_scale = 100;
  int brightness_scale = 100;
  int alpha_scale = 100;
  
  background(background_init_color);
  colorMode(HSB, hue_scale, saturation_scale, brightness_scale, alpha_scale); 

  noStroke();
  
  // for slider
  slider_width = 200;
  slider_height = 20;
  slider_x = 50;
  slider_y = 100;
  slider = new ControlP5(this);
  slider.addSlider("slider1")
     .setCaptionLabel("Brightness")
     .setPosition(slider_x, slider_y)
     .setSize(slider_width, slider_height)
     .setRange(0,100)
     .setValue(100)
     ;
    
  // resizable window size
  surface.setResizable( true );
  
  // preparing csv
  file = createWriter(csv_file_name);
  
  
}


void draw(){
  int particle_size = 50;
  float radius =  0.0;
  float x = 0.0;
  float y = 0.0;
  float saturation, brightness, alpha;
  saturation = 100; //0~100 scale
  brightness = 100; //0~100 scale
  alpha = 100; //0~100 scale
  color c = get(mouseX, mouseY); // return in rgb scheme
 
  //for displaying RGB colors
  fill(50,100,255,200);
  rect(width - 80,height - 64,100,64);
  
  // display RGB
  r_clicked = red(c)*255/360; //even though c has values in rgb, its scale is as same as hsb, so we need to adjust the value according to 0-255 scale 
  g_clicked = green(c)*255/100;
  b_clicked = blue(c)*255/100;
  tcr = "R:"+str(r_clicked); 
  tcg = "G:"+str(g_clicked);
  tcb = "B:"+str(b_clicked);
  fill(255,255,255);
  textSize(12);
  //text("slider_x,slider_y ="+ str(slider_x)+","+str(slider_y),width - 80,height - 52);
  text("num :"+ str(counter),width - 80,height - 52);
  text("x,y :"+ str(mouseX)+","+str(mouseY),width - 80,height - 40);
  text(tcr,width - 80,height - 28);
  text(tcg,width - 80,height - 16);
  text(tcb,width - 80,height - 4);

  // translate the origin coodinate towards the center of the display
  translate(width/2, height/2);  


  // drawing a color wheel 
  for (int i=0; i<15; ++i){
    for (int angle=0; angle < 360; angle += 10) { 
      fill(color(angle, saturation*i/15, brightness*slider1/100, alpha));
      x = radius*cos(radians(angle));
      y = radius*sin(radians(angle));
      ellipse(x, y, particle_size, particle_size);
      radius +=0.5;
      particle_size += 0.2;
    }
  }
  
  // translate the origin coodinate back to the center of the display
  translate(-width/2, -height/2);  
  
  // change slider1's value (used for the ratio of brightness)
  fill(slider1);
  
  // if press q, the program quits
  if ((keyPressed == true) && (key == 'q')) {
    file.close();
    exit();
  }

}

void mousePressed() {
  color c = get(mouseX, mouseY);
  r_clicked = red(c)*255/360;
  g_clicked = green(c)*255/100;
  b_clicked = blue(c)*255/100;
  if(r_clicked == g_clicked && g_clicked == b_clicked && b_clicked == background_init_color){
    clicked_in_colorwheel = false; // when the mouse was clicked outside of the color wheel (where the clicked color is as same as background_init_color)
  }else if(slider_x <= mouseX && mouseX <= slider_x + slider_width && slider_y <= mouseY && mouseY <= slider_y + slider_height){
    clicked_in_colorwheel = false; // when the mouse was clicked inside of the slider
  }else{
    clicked_in_colorwheel = true;
  }
}

void mouseReleased() {
  if(clicked_in_colorwheel){
    file.print(r_clicked);
    file.print(",");
    file.print(g_clicked);
    file.print(",");
    file.println(b_clicked);
    file.flush();
    counter +=1;
    textSize(100);
    text("saved!",width/2-140,height/2); //TODO: the text only appears for a short period, will multithreding do?
  }
}


//image
//http://cvwww.ee.ous.ac.jp/files/%E7%94%BB%E5%83%8F%E5%B7%A5%E5%AD%A6_Processing%E3%81%AB%E3%82%88%E3%82%8B%E7%94%BB%E5%83%8F%E5%87%A6%E7%90%86%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0.pdf

//how to write color wheel
//https://thom.hateblo.jp/entry/2022/05/29/121529

//slider
//https://ameblo.jp/hajimeteno-pic/entry-12688855455.html

//color object
//https://processing.org/reference/get_.html
