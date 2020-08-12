//import 'package:flutter/material.dart';
//import 'chat_screen.dart';
//import 'calorie_counter.dart';
//import 'feeds_page.dart';
//
//class BottomNavigationBar extends StatefulWidget {
//  @override
//  _BottomNavigationBarState createState() => _BottomNavigationBarState();
//}
//
//class _BottomNavigationBarState extends State<BottomNavigationBar> {
//  int _selectedIndex = 0;
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//
//      if (_selectedIndex == 3) {
//        Navigator.pushNamed(context, ChatScreen.id);
//      } else if (_selectedIndex == 2) {
//        Navigator.pushNamed(context, CalorieCounter.id);
//      } else if (_selectedIndex == 1) {
//        Navigator.pushNamed(context, InstaHome.id);
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      unselectedIconTheme: IconThemeData(
//        color: Color(0xFF696969),
//      ),
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//          icon: Icon(Icons.home),
//          title: Text('Home'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.date_range),
//          title: Text('Plans'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.dashboard),
//          title: Text('Dashboard'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.chat),
//          title: Text('Community'),
//        ),
//      ],
//      currentIndex: _selectedIndex,
//      selectedItemColor: Colors.green,
//      onTap: _onItemTapped,
//    );
//  }
//}
