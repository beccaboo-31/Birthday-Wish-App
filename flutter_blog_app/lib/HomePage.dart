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
        backgroundColor: Color(0xFF02bb9f),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Happy Birthday ",
          style: GoogleFonts.merienda(
            textStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold
            ),) 
          ),
          Text("Ashna! ❤️",
          style: GoogleFonts.merienda(
            textStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold
            ),) 
            )
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
                  margin: EdgeInsets.all(5),
                  child: Image.asset(showData[index]["imgurl"], fit: BoxFit.cover)//Image has to be put here
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
        }, future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
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