
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';

import '../SecondRoute.dart';
import '../hompageRoute.dart';


class SLoginPage extends StatelessWidget {
  String _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  
  SLoginPage({Key key}):
  super(key: key);
  
  Widget build(BuildContext context) {
   
  
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
       child: Form(
        
        autovalidate: true,
        key: _formKey,
        child: Column(children: <Widget>[
          
          AppCard(
                   child: Image.asset(
                "assets/images/sticky.png"),
                
                
                ),
                AppCard(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Title(color: Colors.white, child: Text("Student", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 32.0,color: Colors.white, fontWeight: FontWeight.bold),)),
                     TextFormField(
            decoration: const InputDecoration(labelText: 'Username/Email'),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length < 2){
                return 'Please enter a valid username';
              }
            },
          ),
                    TextFormField(
                      controller: _pass,
                     decoration: const InputDecoration(labelText: 'Password'),
                     keyboardType: TextInputType.text,
                     obscureText: true,
            validator: (value) {
              if(value.isEmpty){
                return 'please enter password';
              }else if(value.length < 6){
                return'Password should be more than 6';

              }
            },
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child:  FlatButton(color: Colors.yellow,
                        textColor: Colors.white,
  onPressed: () {
      if(_formKey.currentState.validate()) {
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePageRoute()),
                          );
      }
    
                        },
                        child: Text("Login"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("Forgot Password"),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              
              
                Text("Don't have an account?"),
                FlatButton(
                  onPressed: (){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondRoute()));
                  },
                  child: Text("Register here"),
                )
              ],
            )
                  ],
                ),
              ),
            ),
          
         
          
        ]),
      )
      
    ));}}