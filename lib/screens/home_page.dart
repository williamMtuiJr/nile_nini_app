import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import './../constants.dart';
//import './../components/app_bar_items.dart';
import 'dashboard_page.dart';
//import 'community_page.dart';
import 'my_home_page.dart';
import 'test.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'plans_page.dart';

class HomePage extends StatefulWidget {
  static String id = '/Seventh';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

//  static const TextStyle optionStyle =
//      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),

    PlansPage(),
    Testing4(),
    MyHomePage(),
//    CommunityPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
//              shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Colors.purple,
                iconSize: 18,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color(0xFFF7F3F7),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.date_range,
                    text: 'Plans',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.map,
                    text: 'Insights',
                  ),
                  GButton(
                    icon: Icons.people,
                    text: 'Chats',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
//                  setState(() {
////                    _selectedIndex = index;
////                  });
                  _onItemTapped(index);
                }),
          ),
        ),
      ),
    ));
  }
}
