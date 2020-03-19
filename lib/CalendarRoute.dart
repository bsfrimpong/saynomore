import 'package:flutter/material.dart';
import 'package:willie_help_trained_teacher/pages/calendar.dart';

class CalendarRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calendar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Calendar(),
    );
  }
}