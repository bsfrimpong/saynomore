
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';

import 'Option.dart';


class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Stack(
           children: <Widget>[
             Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/images/sciencelab.jpg'),
             fit: BoxFit.cover
             )
           ),
         ),
         AppCard(
                   child: Image.asset(
                "assets/images/sticky.png"),
                
                
                ),
         Center(child: FlatButton(color: Colors.yellow,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Option()),
                          );
                        },
                        child: Text("Welcome", style: TextStyle(fontSize: 15.0,color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),),)
           ],
         ),
      );
  }
}
