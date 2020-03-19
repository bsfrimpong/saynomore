import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;
  AppCard({@required this.child, this.borderStyle, this.boxShadowColor});
  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.green,
          child: new Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
            decoration: new BoxDecoration(
              color: Colors.green,
              border: widget.borderStyle ??
                Border.all(
                  color: Colors.yellow,
                  width: 2,
                ),
              boxShadow: [
                new BoxShadow(
                  color: widget.boxShadowColor ?? Colors.yellow,
                  offset: new Offset(10.0, 10.0)
                )
              ]
            ),
          ),
        ),
      ],
    );
  }
}
