import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';
import 'package:willie_help_trained_teacher/pages/Shomepage.dart';



class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('About willie help', 
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
                AppCard  (
                  child: Container(
                    margin: EdgeInsets.only(top: 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('WILLIE HELP EDUCATION, the most elaborate education system. We are hear to provide jobs and offer you a quality way of acquiring knowledge to soar hihger. Order for a teacher now...',
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                           child: Title(color: Colors.white, child: Text("Our Services", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 32.0,color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                          ),
                        ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('We offer Talent Child(T-child), for JHS and primary students, Smart learning(S-lesrning) for Senior High school Students, U-Music for music students, T-third for tertiary students, and Master Mind for postgraduates',
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 20.0),
                           child: Title(color: Colors.white, child: Text("Contact us", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 32.0,color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('Mobile- 0550926578/0502193246',
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('Email- Williehelptrainteacher@gmail.com/ Trainteacher.edughana@gmail.com',
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                            textAlign: TextAlign.center,
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
