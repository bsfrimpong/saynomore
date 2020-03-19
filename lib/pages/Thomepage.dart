import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';
import 'package:willie_help_trained_teacher/pages/welcome.dart';



class THomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
     appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){},
            )
          ],
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppCard(
                   child: Image.asset(
                "assets/images/sticky.png"),
                
                
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          iconSize: 50.0,
                          icon: Icon(Icons.school),
                          color: Colors.yellow,
                          onPressed: (){
                            
                          },
                        ),
                        FlatButton(
                          onPressed: (){
                            
                          },
                          child: Text("T-Child"),
                        ),
                        IconButton(
                          iconSize: 50.0,
                          icon: Icon(Icons.school),
                          color: Colors.yellow,
                          onPressed: (){
                           
                          },
                        ),
                        FlatButton(
                          onPressed: (){
                            
                          },
                          child: Text("S-Learning"),
                        ),
                        IconButton(
                          iconSize: 50.0,
                          icon: Icon(Icons.school),
                          color: Colors.yellow,
                          onPressed: (){
                            
                          },
                        ),
                        FlatButton(
                          onPressed: (){
                           
                          },
                          child: Text("U-Music"),
                        ),
                        IconButton(
                          iconSize: 50.0,
                          icon: Icon(Icons.school),
                          color: Colors.yellow,
                          onPressed: (){
                           
                          },
                        ),
                        FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdRoute()));
                          },
                          child: Text("T-Third"),
                        ),
                        IconButton(
                          iconSize: 50.0,
                          icon: Icon(Icons.school),
                          color: Colors.yellow,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdRoute()));
                          },
                        ),
                        FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdRoute()));
                          },
                          child: Text("T-Child"),
                        ),


                ]),


          ),
        )
    ])));
  }
}
