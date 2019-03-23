import 'package:flutter/material.dart';

// *******************************************
/* */
// *******************************************

class FirstPanel extends StatefulWidget {
  @override
  _FirstPanelState createState() => _FirstPanelState();
}

class _FirstPanelState extends State<FirstPanel> {
  @override
  Widget build(BuildContext context) {
    return new Container(
            decoration: new BoxDecoration(
                gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Colors.green[100], Colors.teal[100]])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //this Container contains the sign in info of the parent
                //it will show the image fetched from sign in if any
                //and will also show the name and id of the parent
                new Container(
    height: 200.0,
    width: double.infinity,
    decoration: new BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.green[100], Colors.blue[100]])),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white),
        )
      ],
    ),
                ),

                //the various options begin from here
                //we can modify these options later on

                Padding(
    padding: const EdgeInsets.all(16.0),
    child: new FlatButton(
      child: new Text(
        'Test Score',
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: () {},
    ),
                ),
                Padding(
    padding: const EdgeInsets.all(16.0),
    child: new FlatButton(
      child: new Text(
        'Test Score',
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: () {},
    ),
                ),
                Padding(
    padding: const EdgeInsets.all(16.0),
    child: new FlatButton(
      child: new Text(
        'Test Score',
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: () {},
    ),
                ),
                Padding(
    padding: const EdgeInsets.all(16.0),
    child: new FlatButton(
      child: new Text(
        'Test Score',
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: () {},
    ),
                )
              ],
            ));
    }
}