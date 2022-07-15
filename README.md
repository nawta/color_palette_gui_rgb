# color_palette_gui_rgb
Choose a color from a color wheel via GUI, click it, and its RGB data is written into a csv file.  
You can choose the brightness from the slider upperleft. the color wheel reflects hue and saturation.  
You can also check the location of your mouse coodinates and the RGB value of the pixel you are selecting.  

## Sample Images
### The UI
<img width="300" alt="スクリーンショット 2022-07-16 6 45 52" src="https://user-images.githubusercontent.com/39507181/179316915-a6bf54de-1416-40f5-a31c-58fd6426574c.png">

### You can adjust the brightness from the slider
![画面収録_2022-07-16_6_42_01_AdobeExpress](https://user-images.githubusercontent.com/39507181/179317971-967ab059-d0a8-4331-b991-52b614b86c6c.gif)


### You can adjust the window size
![画面収録_2022-07-16_6_47_57_AdobeExpress](https://user-images.githubusercontent.com/39507181/179318464-da0b26ab-f14a-44eb-b9b1-7da73a009cb0.gif)



### How to use
This program is written in Processing, and you'll need to install Processing 3 beforehand.  
When you execute the program, click the color from the color wheel.
After you clicked RGB pixels enough, press 'q' to exit, and you'll see a csv file is output.  

csv file is written like below. The three columns correspond to R, G, and B values. The records are written from above to below.
<img width="410" alt="スクリーンショット 2022-07-16 6 49 32" src="https://user-images.githubusercontent.com/39507181/179318831-d214ad07-b132-47ef-af4e-f685dd47236e.png">

