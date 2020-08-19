import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'discussions_intro.dart';
import 'chat_groups_intro.dart';
import 'my_home_page.dart';
//import './../constants.dart';
import './../components/stretched_toggle_button.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'discussions_intro.dart';
import 'chat_groups_intro.dart';
import 'my_home_page.dart';
//import './../constants.dart';
import './../components/stretched_toggle_button.dart';
import 'chat_page.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<bool> isSelected = [true, false];
  int toggleButtonIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              child: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black87,
              ),
              padding: EdgeInsets.all(7.0),
            ),
          );
        }),
        backgroundColor: Colors.white,
        title: SizedBox(
          child: Center(
            child: Text(
              'Community',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 15.0,
          ),
          Icon(
            FontAwesomeIcons.questionCircle,
            color: Colors.black87,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: Column(
        children: [
          ToggleButtons(
//            focusColor: Colors.white,
//            highlightColor: Colors.white,
            fillColor: Colors.white,
//            selectedColor: ,
//            splashColor: Colors.white,
//            color: Colors.white,
            renderBorder: false,
//            selectedBorderColor: Colors.white,
//            disabledBorderColor: Colors.white,
            borderColor: Colors.white,
            borderWidth: 0.0,
            children: [
              StretchedToggleButton(
                isSelected: isSelected,
                toggleIndex: 0,
                label: 'For You',
              ),
              StretchedToggleButton(
                isSelected: isSelected,
                toggleIndex: 1,
                label: 'Courses',
              ),
            ],
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                    buttonIndex < isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    isSelected[buttonIndex] = true;
                  } else {
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
          ),
          Flexible(
            child: isSelected[0] ? MyHomePage() : ChatPage(),
          ),
        ],
      ),
    );
  }
}

//class CommunityPage extends StatefulWidget {
//  @override
//  _CommunityPageState createState() => _CommunityPageState();
//}
//
//class _CommunityPageState extends State<CommunityPage> {
//  List<bool> isSelected = [true, false];
//  int toggleButtonIndex;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        leading: Builder(builder: (BuildContext context) {
//          return GestureDetector(
//            onTap: () {
//              Scaffold.of(context).openDrawer();
//            },
//            child: Container(
//              child: Icon(
//                FontAwesomeIcons.bell,
//                color: Colors.black87,
//              ),
//              padding: EdgeInsets.all(7.0),
//            ),
//          );
//        }),
//        backgroundColor: Colors.white,
//        title: SizedBox(
//          child: Center(
//            child: Text(
//              'Community',
//              style: TextStyle(color: Colors.black),
//            ),
//          ),
//        ),
//        actions: [
//          SizedBox(
//            width: 15.0,
//          ),
//          Icon(
//            FontAwesomeIcons.questionCircle,
//            color: Colors.black87,
//          ),
//          SizedBox(
//            width: 15.0,
//          ),
//        ],
//      ),
//      body: Column(
//        children: [
//          ToggleButtons(
////            focusColor: Colors.white,
////            highlightColor: Colors.white,
//            fillColor: Colors.white,
////            selectedColor: ,
////            splashColor: Colors.white,
////            color: Colors.white,
//            renderBorder: false,
////            selectedBorderColor: Colors.white,
////            disabledBorderColor: Colors.white,
//            borderColor: Colors.white,
//            borderWidth: 0.0,
//            children: [
//              StretchedToggleButton(
//                isSelected: isSelected,
//                toggleIndex: 0,
//                label: 'For You',
//              ),
//              StretchedToggleButton(
//                isSelected: isSelected,
//                toggleIndex: 1,
//                label: 'Courses',
//              ),
//            ],
//            onPressed: (int index) {
//              setState(() {
//                for (int buttonIndex = 0;
//                    buttonIndex < isSelected.length;
//                    buttonIndex++) {
//                  if (buttonIndex == index) {
//                    isSelected[buttonIndex] = true;
//                  } else {
//                    isSelected[buttonIndex] = false;
//                  }
//                }
//              });
//            },
//            isSelected: isSelected,
//          ),
//          Flexible(
//            child: isSelected[0] ? MyHomePage() : ChatGroups(),
//          ),
//        ],
//      ),
//    );
//  }
//}
