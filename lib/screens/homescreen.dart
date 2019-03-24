import 'package:flutter/material.dart';
import 'package:payments_app_ui/screens/first_panel.dart';
import 'package:payments_app_ui/transactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const header_height = 250.0;
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
    return Scaffold(
      body: new Container(
        child: new Stack(
          children: <Widget>[
            //***********************************
            //This is the container that appears after we click on the drawer icon.
            //It contains the various options our user will have to navigate our app.
            //Color is set ot theme color for uniformity
            //*********************************
            FirstPanel(),

            // ******************************************
            // the second panel that contains the list of items
            // // ******************************************
            // Draggable(
            //   // onDragStarted: ,
            //   // onDragCompleted: ,
            //   // onDragEnd: ,
            //   child: Container(
            //     width: double.infinity,
            //     height: 50.0,

            //   ),
            //   feedback: ,
            // )
            PositionedTransition(
              rect: getAniamtionPanel(constraints),
              child: new Material(
                elevation: 0.0,
                color: Colors.white,
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
                        onPressed: () {
                          controller.fling(
                              velocity: isPanelVisible ? -1.0 : 1.0);
                        },
                        icon: Icon(Icons.maximize),
                        iconSize: 40.0,
                        color: Color(0xFFAEA6C4),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Text(
                         'Recent Transactions',
                         style: TextStyle(
                           color: Color(0xFFAEA6C4),
                           fontSize: 18.0,
                           fontWeight: FontWeight.w300,
                           letterSpacing: 2.0
                         ), 
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: _buildListOfTransactions,
                      itemCount: list.length,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListOfTransactions(BuildContext context, int index){
    return Container(
      height: 100.0,
      width: double.infinity,
      child: Card(
        elevation: 4.0,
        color: Colors.white,      
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            list[index].icon , 
            SizedBox(width: 50.0,),
            Column(children: <Widget>[
              Text(list[index].name),
              Divider(color: list[index].color,  height: 3.0,),
              Text(list[index].location)
            ],)
          ],
        ),
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
