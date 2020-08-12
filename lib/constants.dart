import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.green,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.onPressed, @required this.colour, @required this.title});

  final String title;
  final Function onPressed;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

const kBackgroundColour = Color(0xFFDCEEFD);
const kBackgroundColour2 = Color(0xFF9BE5E0);
const kBackgroundColour3 = Color(0xFFFAFCFD);
const kButtonColor = Color(0xFF70C7BE);
const kIconColor = Color(0xFF6FB5B0);

const kColor1 = Color(0xFFF4B400);
const kColor2 = Color(0xFF4285F4);
const kColor3 = Color(0xFFF25022);
const kColor4 = Color(0xFF40E0D0);

const kColor11 = Color(0xFFB3CCE4);
const kColor12 = Color(0xFFC0BEC5);
const kColor13 = Color(0xFF474857);
const kColor14 = Color(0xFF57B5CD);
const kColor15 = Color(0xFFf1b60f);
const kColor16 = Color(0xFF071882);

const kColor5 = Color(0xFF354FB7);
const kColor6 = Color(0xFF9EA5C9);
const kColor7 = Color(0xFFC5BDCD);
const kColor8 = Color(0xFFF95C54);
const kColor9 = Color(0xFF399DB8);
const kColor10 = Color(0xFF537499);

const kAppBarTextStyle = TextStyle(
  color: Colors.black87,
);

//final bottomNavigationBar = BottomNavigationBar(),
