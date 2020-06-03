import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portrait/src/pages/twitter_page.dart';

import 'navigation_page.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
          duration: Duration(milliseconds: 500),
          child: Text('Animate')),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => TwitterPage()));
            },
          ),
          SlideInLeft(
            from: 10,
            child: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Page1Page()));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => NavigationPageR()));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElasticIn(
                duration: Duration(milliseconds: 2000),
                child: Icon(Icons.new_releases, color: Colors.blue, size: 40)),
            FadeInDown(
                delay: Duration(milliseconds: 2000),
                child: Text(
                  'Title',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
                )),
            FadeInDown(
              duration: Duration(milliseconds: 3000),
              child: Text(
                'I am child text',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 1100),
              child: Container(
                width: 220,
                height: 2,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
