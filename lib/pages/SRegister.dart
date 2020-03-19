import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/common/AppCard.dart';
import '../hompageRoute.dart';
import 'Slogin.dart';





class RegisterPage extends StatelessWidget {
String _name;
String selected;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController _pass = TextEditingController();
final TextEditingController _confirmPass = TextEditingController();
final List<String> _items = ['T-child','S-learning','Master Mind','U-Music'].toList();
String _selection;

@override
void initState([Null Function() param0]) {
  _selection = _items.first;
 
}
  @override
  RegisterPage({Key key}):
  super(key: key);
  Widget build(BuildContext context) {
    final DropdownMenuOptions = _items
    .map((String item) =>
    new DropdownMenuItem<String>(value: item, child: new Text(item))
    )
    .toList();
    return Scaffold(
         backgroundColor: Colors.white,
          appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Register'),
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
                           decoration: const InputDecoration(labelText: 'First Name'
                ),
              
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your first name';
              }
            },
          ),
                        TextFormField(
                                   decoration: const InputDecoration(labelText: 'Last Name'),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your last name';
              }
            },
          ),
                        TextFormField(
                                    decoration: const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your Age';
              }
            },
          ),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Nationality'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your country of origin';
              }
            },
          ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Education Level",),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Mobile Number"),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Email"),
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
                     TextFormField(
                      controller: _confirmPass,
                     decoration: const InputDecoration(labelText: 'Confirm Password'),
                     keyboardType: TextInputType.text,
                     obscureText: true,
            validator: (value) {
              if(value.isEmpty){
                return 'please confirm password';
              }else if(value != _pass.text){
                return'Passwords do not match';

              }
            },
                    ),
                        SingleChildScrollView(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              DropdownButtonFormField<String>(
                               value: _selection,
                               items: DropdownMenuOptions,
                               onChanged: (s){
                                initState((){
                                   _selection = s;
                                 
                                 }
                                 );
                               }
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            color: Colors.yellow,
                            textColor: Colors.white,
                            onPressed: (){ if(_formKey.currentState.validate()) {
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePageRoute()),
                          );
      }},
                            child: Text("Register"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SLoginPage()));
                      },
                      child: Text("Sign up"),
                    ),
                    Text("Have an account?"),
                  ],
                )
              ]
          ),
    )));
  }
}
