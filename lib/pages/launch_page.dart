import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:nnapp/pages/home_page.dart';
import 'package:nnapp/pages/login_screen.dart';
import 'package:nnapp/pages/registration.dart';

import 'login.dart';

class LaunchPage extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'NILISHE',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/logo.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/logo.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/logo.png',
    ),
    Introduction(
      title: 'Finish',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/logo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegistrationScreen(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}

//class LaunchPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.only(
//                left: 100, right: 100, top: 100, bottom: 100),
//            child: Container(
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage('assets/images/logo.jpg'))),
//              height: 400.0,
//            ),
//          ),
//          Center(child: Text('NILISHE', style: TextStyle(fontSize: 40, color:Colors.green))),
//        ],
//      ),
//      bottomNavigationBar: BottomAppBar(
//        child: Container(
//          color: Colors.green,
//          width: 100,
//          child: RaisedButton(
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (BuildContext context) {
//                  return Language();
//                }));
//              },
//              child: Text('next')),
//        ),
//      ),
//    );
//  }
//}
