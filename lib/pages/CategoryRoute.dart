
import 'package:flutter/material.dart';

import 'category.dart';





class CategoryRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        theme: ThemeData(
          textTheme: TextTheme(
            display2: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 45.0,
              color: Colors.orange,
            ),
            button: TextStyle(
              fontFamily: 'OpenSans',
            ),
            subhead: TextStyle(fontFamily: 'NotoSans'),
            body1: TextStyle(fontFamily: 'NotoSans'),
          ),
        ),
        home: Category());
  }
}