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
    return SingleChildScrollView(
      child: Column(
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
                  assetImagePath: "images/relationships.jpeg",
                  text: 'Relationships',
                  textColour: Colors.black,
                ),
              ),
              Expanded(
                child: CourseCard(
                  assetImagePath: 'images/sex.jpeg',
                  textColour: Colors.black,
                  text: 'Sex life',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CourseCard(
//              color: Colors.teal,
                  assetImagePath: "images/pregnancygrowth.jpeg",
                  text: 'Pregnancy',
                  textColour: Colors.black,
                ),
              ),
              Expanded(
                child: CourseCard(
//              color: Colors.purple,
                  assetImagePath: "images/parenting.jpeg",
                  text: 'Parenting',
                  textColour: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CourseCard(
//              color: Colors.teal,
                  assetImagePath: "images/kitchentime.jpeg",
                  text: 'Kitchen time',
                  textColour: Colors.black,
                ),
              ),
              Expanded(
                child: CourseCard(
//              color: Colors.purple,
                  assetImagePath: "images/chw_image.jpg",
                  text: 'Clinic hours',
                  textColour: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CourseCard(
//              color: Colors.teal,
                  assetImagePath: "images/baby care.jpeg",
                  text: 'The babys Joy',
                  textColour: Colors.white,
                ),
              ),
              Expanded(
                child: CourseCard(
//              color: Colors.purple,
                  assetImagePath: "images/babysappetite.jpeg",
                  text: 'Baby Appetite',
                  textColour: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//class ChatGroups extends StatefulWidget {
//  @override
//  _ChatGroupsState createState() => _ChatGroupsState();
//}
//
//class _ChatGroupsState extends State<ChatGroups> {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: [
//        SizedBox(
//          height: 20.0,
//        ),
//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [
//            Expanded(
//              child: CourseCard(
////              color: Colors.teal,
//                text: 'The Ultimate Baby Formula',
//              ),
//            ),
//            Expanded(
//              child: CourseCard(
////              color: Colors.purple,
//                text: 'The Ultimate Baby Formula',
//              ),
//            ),
//          ],
//        ),
//      ],
//    );
//  }
//}
