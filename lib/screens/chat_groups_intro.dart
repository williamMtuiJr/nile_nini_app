import 'package:flutter/material.dart';
//import './../constants.dart';
import './../components/course_card.dart';

class ChatGroups extends StatefulWidget {
  @override
  _ChatGroupsState createState() => _ChatGroupsState();
}

class _ChatGroupsState extends State<ChatGroups> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: CourseCard(
//              color: Colors.teal,
                text: 'The Ultimate Baby Formula',
              ),
            ),
            Expanded(
              child: CourseCard(
//              color: Colors.purple,
                text: 'The Ultimate Baby Formula',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
