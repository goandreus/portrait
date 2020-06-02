import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatefulWidget {
  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {

  bool activate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: (){
          setState(() {
            activate = true;
          });
        },
      ),
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
          child: ZoomOut(
            animate: activate,
              from: 30,
              duration: Duration(seconds: 1),
              child: FaIcon(
        FontAwesomeIcons.twitter,
        color: Colors.white,
        size: 40,
      ))),
    );
  }
}
