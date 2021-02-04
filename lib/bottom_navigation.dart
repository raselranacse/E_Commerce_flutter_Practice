import 'package:e_commerce/A.dart';
import 'package:e_commerce/B.dart';
import 'package:e_commerce/C.dart';
import 'package:e_commerce/D.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final pages=[ A(), B(), HomeScreen(), C(), D()];
  var _page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index){
          setState(() {
            _page=index;
          });
        },
        index: 2,
          color: Colors.blue,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          animationCurve: Curves.easeInOut,
          items: [
            Icon(Icons.person),
        Icon(Icons.favorite_border),
            Icon(Icons.home),
        Icon(Icons.shopping_cart),
        Icon(Icons.dashboard),
      ]),
      body: pages[_page],
    );
  }
}
