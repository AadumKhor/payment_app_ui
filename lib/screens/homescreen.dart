import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const header_height = 200.0;
  AnimationController controller;

  Animation<RelativeRect> getAniamtionPanel(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final top = height - header_height;
    final frontPanelHeight = -header_height;

    return new RelativeRectTween(
      begin: RelativeRect.fromLTRB(0.0, top, 0.0, frontPanelHeight),
      end: RelativeRect.fromLTRB(0.0, 20.0, 0.0, 0.0),
    ).animate(new CurvedAnimation(parent: controller, curve: Curves.linear));
  }

  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    // controller.forward();
    return new Container(
      child: new Stack(
        children: <Widget>[
          //***********************************
          //This is the container that appears after we click on the drawer icon.
          //It contains the various options our user will have to navigate our app.
          //Color is set ot theme color for uniformity
          //*********************************
          new Container(
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
                  //TODO: Make them better if possible
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
              )),
          // ******************************************
          // the second panel that contains the list of items
          // ******************************************
          PositionedTransition(
            rect: getAniamtionPanel(constraints),
            child: new Material(
              elevation: 12.0,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: new Column(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0))),
                    height: 30.0,
                    child: new Center(
                            child: IconButton(
                              onPressed: (){
                                controller.fling(velocity: isPanelVisible?-1.0:1.0);
                              },
                              icon : Icon(Icons.linear_scale),
                              color: Color(0xFFAEA6C4),
                            
                            )),
                  ),
                  Expanded(
                    child: new Container(
                        height: header_height,
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.pink[200], Colors.blue[200]])),
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: double.infinity,
                              height: 160.0,
                              child: Icon(Icons.ac_unit),
                              decoration: BoxDecoration(color: Colors.white),
                            );
                          },
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
