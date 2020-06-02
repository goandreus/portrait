import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationPageR extends StatelessWidget {
  const NavigationPageR({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Notification Page'),
      ),
      floatingActionButton: ButtomFloat(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
            title: Text('bones'), icon: FaIcon(FontAwesomeIcons.bone)),
        BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Stack(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.bell),
                Positioned(
                  top:  0.0,
                  right: 0.0,
                //     child: Icon(
                //   Icons.brightness_1,
                //   size: 10,
                //   color: Colors.red,
                // ),
                child: Container(
                  child: Text('1', style: TextStyle(color: Colors.white, fontSize: 7),),
                  alignment: Alignment.center,
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle
                  ),
                ),
                ),
              ],
            )),
        BottomNavigationBarItem(
            title: Text('My cat'), icon: FaIcon(FontAwesomeIcons.cat)),
      ],
    );
  }
}

class ButtomFloat extends StatelessWidget {
  const ButtomFloat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.indigo,
      child: FaIcon(FontAwesomeIcons.play),
      onPressed: () {},
    );
  }
}
