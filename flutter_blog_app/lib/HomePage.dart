import 'dart:convert';

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

      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData = json.decode(snapshot.data.toString());
          return GridView.builder(
          itemCount: showData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (BuildContext context, int index){ //Have to pass something
            return new GestureDetector(
              child: new Card(
                elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: Text(showData[index]['msg'])//Image has to be put here
                  )
              )
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