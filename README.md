# Birthday Wish App

This is a perfect app for making your friend's birthday (especially in quarantine) a memorable one! An app that shows a collection of images and birthday wishes!

## Prerequistes
- Android SDK / Android Studio
- Flutter
- Text editor like VS Code

## How to Use

- All you got to do is make changes in the *data.json* file

![image](https://user-images.githubusercontent.com/39988748/81225155-63652d00-9006-11ea-8aff-caf049e5beda.png)

  - Edit the *name, msg* and *imgurl* fields as per your desired content.
  
- Make sure you save the images in the *images* directory and ensure that the correct name is used in *data.json* under *imgurl*

![image](https://user-images.githubusercontent.com/39988748/81224877-ff426900-9005-11ea-9f48-a0f17a8b597c.PNG)

## The Result

- The home screen consists a list view of all images

![image](https://user-images.githubusercontent.com/39988748/81225922-a70c6680-9007-11ea-9370-6259611bd892.png)

- On clicking a particular image, the message of the respective person is shown

![image](https://user-images.githubusercontent.com/39988748/81225765-66ace880-9007-11ea-94f0-40b3575f24f8.png)

## How to Build

For minimizing app size use following commands to build the app :
```bash
>flutter clean
>flutter build appbundle --target-platform android-arm,android-arm64
```

### Additional Notes

- For security and privacy purposes one may use offline images.
- A 512x512 resolution image looks clear and image size will merely be ~150KB
- This won't make the app bulky, and the complete app can be <10MB by excluding extra bundles.

### Authors

- Myron Carvalho
- Neha Patil
- Rebecca Biju
  
