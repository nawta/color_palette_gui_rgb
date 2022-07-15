# color_palette_gui_rgb
Choose a color from a color wheel via GUI, click it, and its RGB data is written into a csv file.  
You can choose the brightness from the slider upper left. the color wheel reflects hue and saturation.  
You can also check the location of your mouse coodinates, the RGB value of the pixel you are selecting, and the number you choose colors from the color wheel.  

## Sample Images
### The UI
<img width="300" alt="スクリーンショット 2022-07-16 6 45 52" src="https://user-images.githubusercontent.com/39507181/179316915-a6bf54de-1416-40f5-a31c-58fd6426574c.png">

### You can confirm if your click was saved or not by the pop up 
![画面収録_2022-07-16_6_47_57_AdobeExpress (1)](https://user-images.githubusercontent.com/39507181/179319503-2e5e282c-f88f-41b3-9e90-4298b6b89767.gif)


### You can adjust the brightness from the slider
![画面収録_2022-07-16_6_42_01_AdobeExpress](https://user-images.githubusercontent.com/39507181/179317971-967ab059-d0a8-4331-b991-52b614b86c6c.gif)


### You can adjust the window size
![画面収録_2022-07-16_6_47_57_AdobeExpress](https://user-images.githubusercontent.com/39507181/179318464-da0b26ab-f14a-44eb-b9b1-7da73a009cb0.gif)

### You can check out the number you clicked from the palette(color wheel), mouse coodinates, and RGB at the lower right. 
<img width="163" alt="スクリーンショット 2022-07-16 7 35 54" src="https://user-images.githubusercontent.com/39507181/179320564-7c06b375-b6aa-4c5b-9256-8c6e219cc113.png">


## How to use
**Be careful not to overwrite your csv file!!!**  
**you should watch out if there's already a csv file in the directory where you gonna output it.**  
This program is written in Processing, and you'll need to install Processing 3 beforehand.  
When you execute the program, click the color from the color wheel.
After you clicked RGB pixels enough, press 'q' to exit, and you'll see a csv file is output.  


you can choose the initial background color and the csv file name by changing the value or path in color_palette_gui_rgb.pde
<img width="272" alt="スクリーンショット 2022-07-16 7 26 36" src="https://user-images.githubusercontent.com/39507181/179319187-d2e2ec6a-765c-4ca4-aa66-2b4cb3487bb3.png">


csv file is written like below. The three columns correspond to R, G, and B values. The records are written from above to below.  
<img width="410" alt="スクリーンショット 2022-07-16 6 49 32" src="https://user-images.githubusercontent.com/39507181/179318831-d214ad07-b132-47ef-af4e-f685dd47236e.png">



