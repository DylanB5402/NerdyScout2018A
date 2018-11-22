import 'package:flutter/material.dart';

class GenericCounter extends StatefulWidget {

  final String title;
  int data = 0;

  GenericCounter({Key key, this.title}) : super(key: key);

  @override
  GenericCounterState createState() => new GenericCounterState(); 
}

class GenericCounterState extends State<GenericCounter> {


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      new Expanded(child: new Text(widget.title)), 
       new RaisedButton.icon(onPressed: () { subtract();}, icon: Icon(Icons.chevron_left),  label: Text(""), ),
       Padding(child: new Text(widget.data.toString()), padding: EdgeInsets.symmetric(horizontal: 10),),
        new RaisedButton.icon(onPressed: () { add();}, icon: Icon(Icons.chevron_right),  label: Text(""), )
    ]
    ));}

  void add() {
    setState(() {
          widget.data++;
        });
  }

  void subtract() {
        setState(() {
        if (widget.data > 0) {
          widget.data--;
          }
      });

  Object getData() {
    return widget.data;
  }
  }

  
}
