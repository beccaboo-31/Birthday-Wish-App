import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/main.dart';
import 'package:auto_size_text/auto_size_text.dart';
  

class HomePage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // var myGridView = new GridView.builder(
    //   itemCount: ,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    //   itemBuilder: (BuildContext context, int index){ //Have to pass something
    //     return new GestureDetector(
    //       child: new Card(
    //         elevation: 5,
    //         child: Container(
    //           alignment: Alignment.center,
    //           margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
    //           child: Text("Hi")//Image has to be put here
    //           )
    //       )
    //     );
    //   });
    // TODO: implement build
    return new Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFFD7272),
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

      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData = json.decode(snapshot.data.toString());
          return GridView.builder(
          itemCount: showData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (BuildContext context, int index){ //Have to pass something
            return new GestureDetector(
              child: new Card(
                // elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: Image.asset('images/Shivani.jpg', fit: BoxFit.cover)//Image has to be put here
                  )
              ),
              onTap: (){
                showDialog(
                  barrierDismissible: true,
                  context: context,
                  child: CupertinoAlertDialog(
                    title: Column(
                      children: <Widget>[
                        Text(showData[index]['name'],
                        style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    content: Text(showData[index]['msg'],
                      style: TextStyle(fontSize: 16, height: 1.5)
                    ),
                  )
                );
              },
            );
          });
        }, future: DefaultAssetBundle.of(context).loadString("assets/sample.json"),
        ),
        ),
      /* Code for a Button */
      
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