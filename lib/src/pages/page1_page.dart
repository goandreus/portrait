import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Page1Page extends StatelessWidget {
  const Page1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animed'),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: (){},  
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: (){},
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.new_releases, color: Colors.blue, size:40),
            Text('Title', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200 ),),
            Text('I am child text', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
            Container(
              width: 220,
              height: 2,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}