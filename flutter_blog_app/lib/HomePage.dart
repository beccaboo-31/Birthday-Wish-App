import 'package:flutter/material.dart';
import 'package:flutter_blog_app/main.dart';

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
        backgroundColor: Colors.cyan,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Happy Birthday ",
          style: TextStyle(
            fontSize: 22)
          ),
          Text("Ashna!",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
        ],)
      ),

      body: Container(),
      // floatingActionButton: Container(
      //   margin: EdgeInsets.only(left: 30),
      //   padding: EdgeInsets.symmetric(vertical: 15),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       FloatingActionButton(
      //         backgroundColor: Colors.cyan,
      //         onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => BlogApp()));
      //         },
      //         child: new IconTheme(
      //           data: new IconThemeData(
      //               color: Colors.white), 
      //           child: new Icon(Icons.add),
      //         ),
      //         )
      //     ],)
      // ),
    );
  }
}