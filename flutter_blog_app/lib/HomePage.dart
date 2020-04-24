import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Happy Birthday Ashna!")
      ),
    );
  }
}