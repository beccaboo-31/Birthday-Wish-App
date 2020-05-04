import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=> runApp(BlogApp());

class BlogApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jon's 22",

      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        fontFamily: 'Merienda',
        // backgroundColor: Colors.grey[600],
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        ),

      home: HomePage()
    );
  }
}

/*
IN data.json FILE YOU CAN ADD ONE'S WISHES BY ADDING THEIR IMAGE AND B'DAY WISH IN THE FOLLOWING JSON FORMAT

{
    "id": "1",
    "name": "", //friends' name
    "msg": "The years we shared while growing up are like treasures to me. I can remember our every moment of laughter. Happy Birthday, my dear friend.", // friends' msg
    "imgurl": "images/.jpg" // friends' image. Can use image url for net images or just relative path for offline image.
  }

-------------------------------------------TIPS------------------------------------------------------
  For security and privacy purposes one may use offline images,
  A 512x512 res looks clear and image size will merely be ~150KB
  So it won't make the app bulky, and complete app can be  <10MB by excluding extra bundles.

  for minimizing app size use following commands to build the app :
  >flutter clean
  >flutter build appbundle --target-platform android-arm,android-arm64
------------------------------------------------------------------------------------------------------

 */
