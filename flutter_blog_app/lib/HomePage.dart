import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
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
    return new Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF99004d),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Happy Birthday Jon! 💛",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold
            )
          ),
        ],)
      ),

      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData = json.decode(snapshot.data.toString());
          return GridView.builder(
          itemCount: showData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (BuildContext context, int index){
            return new GestureDetector(
              child: new Card(
                elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  child: Image.asset(showData[index]["imgurl"], fit: BoxFit.cover)
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
        }, future: DefaultAssetBundle.of(context).loadString("assets/data.json"), // DATA.JSON HOLDS ALL IMAGES AND MESSAGES
        ),
        ),
    );
  }
}

