
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';
import 'CategoryRoute.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Option extends StatelessWidget {
  
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
                                MaterialPageRoute(builder: (context) => CategoryRoute()),
                              );
                            },
                            child: Text("WillieHelp Education",
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
                             Fluttertoast.showToast(
        msg: "COMING SOON",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.yellow,
        textColor: Colors.green,
        fontSize: 16.0
    );
                            },
                            child: Text("Willie Ghana Pay",
                                style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),
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
                            Fluttertoast.showToast(
        msg: "COMING SOON",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.yellow,
        textColor: Colors.green,
        fontSize: 16.0
    );
                            },
                            child: Text("Willie Stretch",
                                style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),
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
                             Fluttertoast.showToast(
        msg: "COMING SOON",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.yellow,
        textColor: Colors.green,
        fontSize: 16.0
    );
                            },
                            child: Text("Willie Domestic Care",
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
