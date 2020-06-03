import 'package:flutter/material.dart';
import 'package:portrait/src/pages/navigation_page.dart';
import 'package:portrait/src/pages/page1_page.dart';
import 'package:portrait/src/pages/twitter_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated',
      home: NavigationPageR(),
    );
  }
} 