import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nnapp/pages/log_meals.dart';
import 'chat_screen.dart';

class CalorieCounter extends StatefulWidget {
  static String id = 'calorie_counter';
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 3) {
        Navigator.pushNamed(context, ChatScreen.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Text('150kCal'),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Image.asset('assets/images/take_photo.png'),
                    title: Text(
                      'Add Breakfast',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, /*fontSize: 20.0*/
                      ),
                    ),
                    subtitle: Text(
                      'Recommended 100 - 600 kCal',
                      style: TextStyle(/*fontSize: 10.0*/),
                    ),
                    trailing: Icon(Icons.add_circle),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Image.asset('assets/images/take_photo.png'),
                    title: Text(
                      'Add Morning Snack',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, /*fontSize: 20.0*/
                      ),
                    ),
                    subtitle: Text(
                      'Recommended 300 - 600 kCal',
                      style: TextStyle(/*fontSize: 10.0*/),
                    ),
                    trailing: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, LogMeals.id);
                        },
                        child: Icon(Icons.add_circle)),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Image.asset('assets/images/take_photo.png'),
                    title: Text(
                      'Add Lunch',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, /*fontSize: 20.0*/
                      ),
                    ),
                    subtitle: Text(
                      'Recommended 600 - 1000 kCal',
                      style: TextStyle(/*fontSize: 10.0*/),
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Image.asset('assets/images/take_photo.png'),
                    title: Text(
                      'Add Evening Snack',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, /*fontSize: 20.0*/
                      ),
                    ),
                    subtitle: Text(
                      'Recommended 300 - 600 kCal',
                      style: TextStyle(/*fontSize: 10.0*/),
                    ),
                    trailing: Icon(Icons.add_circle),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Image.asset('assets/images/take_photo.png'),
                    title: Text(
                      'Add Dinner',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, /*fontSize: 20.0*/
                      ),
                    ),
                    subtitle: Text(
                      'Recommended 600 - 1000 kCal',
                      style: TextStyle(/*fontSize: 10.0*/),
                    ),
                    trailing: Icon(Icons.add_circle),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(
          color: Color(0xFF696969),
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            title: Text('Plans'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Community'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
