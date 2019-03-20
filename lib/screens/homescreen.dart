import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  AnimationController controller;

  HomeScreen({this.controller});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const header_height = 100.0;

  Animation<RelativeRect> getAniamtionPanel(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final top = height - header_height;
    final frontPanelHeight = -header_height;

    return new RelativeRectTween(
      begin: RelativeRect.fromLTRB(0.0, top, 0.0, frontPanelHeight),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(
        new CurvedAnimation(parent: widget.controller, curve: Curves.linear));
  }

  void initState() {
    super.initState();
    widget.controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 100));
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: bothPanels
    );
  }

  @override
  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white),
            ),
            PositionedTransition(
              rect: getAniamtionPanel(constraints),
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                child: Column(
                  children: <Widget>[],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
