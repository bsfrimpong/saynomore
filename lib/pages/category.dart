
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';
import 'package:willie_help_trained_teacher/pages/Slogin.dart';
import 'package:willie_help_trained_teacher/pages/Telogin.dart';
import 'TThirdRoute.dart';
import 'Swelcome.dart';




class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Willie Help'),
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
                    margin: EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: Text('Please select your category',
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                            textAlign: TextAlign.center,

                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.yellow,
                            textColor: Colors.white,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TeLoginPage()),
                              );
                            },
                            child: Text("Teacher",
                            style: TextStyle(fontSize: 15.0,color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.yellow,
                            textColor: Colors.white,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SLoginPage()),
                              );
                            },
                            child: Text("Student",
                                style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ));
  }
}
