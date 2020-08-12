import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './../constants.dart';

class Discussions extends StatefulWidget {
  @override
  _DiscussionsState createState() => _DiscussionsState();
}

class _DiscussionsState extends State<Discussions> {
  List<Widget> discussions = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: kBackgroundColour2,
            ),
          ),
          Expanded(
            flex: 4,
            child: Text('Your Profile'),
          ),
          SizedBox(),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text('0'),
                Text('Posts'),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.red,
            thickness: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text('0'),
                Text('Likes'),
              ],
            ),
          ),
        ],
      ),
    ),
    //Load all available discussions
    ListTile(
//      tileColor: Colors.white,
      leading: Icon(FontAwesomeIcons.venus),
      title: Text('Is it a boy or a girl?'),
      subtitle: Text('Yada, yada, yada, yada,yada'),
    ),
    ListTile(
//      tileColor: Colors.white70,
      leading: Icon(FontAwesomeIcons.baby),
      title: Text('How do i get time to sleep, arghh!'),
      subtitle: Text('Yada, yada, yada, yada,yada yada, yada'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: discussions,
    );
  }
}
