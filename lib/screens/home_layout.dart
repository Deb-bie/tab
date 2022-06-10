// import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tab/screens/category.dart';
import 'package:tab/screens/favorites.dart';
import 'package:tab/screens/home.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({ Key? key }) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // ignore: prefer_final_fields
  List _screens = [
    Home(),
    Category(),
  ];


  void _updateIndex(int value){
    setState(() {
      _currentIndex = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
        
          items: const <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.category, size: 30, color: Colors.white,),
          ],
          color: const Color(0xFF262AAA),
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: _updateIndex,
          letIndexChange: (index) => true,
        ),

        body: _screens[_currentIndex],
      );
  }
}
