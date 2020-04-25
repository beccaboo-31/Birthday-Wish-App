import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()=> runApp(BlogApp());

class BlogApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ashna 22!",

      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        // backgroundColor: Colors.grey[600],
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Times New Roman',
        ),

      home: HomePage()
    );
  }
}