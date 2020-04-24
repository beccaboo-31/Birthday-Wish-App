import 'package:flutter/material.dart';
import 'HomePage.dart';

void main(){
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Ashna 22!",

      theme: ThemeData.dark(),

      home: HomePage()
    );
  }
}