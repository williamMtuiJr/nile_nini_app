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
      subTitle: 'Browse feeds on nutrition',
      imageUrl: 'assets/images/logo.jpg',
    ),
    Introduction(
      title: 'Track your Meals',
      subTitle: 'Track meals of you and your baby ',
      imageUrl: 'assets/images/logo.jpg',
    ),
    Introduction(
      title: 'Get Diet Plans',
      subTitle: 'Get diet plans from diet coaches',
      imageUrl: 'assets/images/logo.jpg',
    ),
    Introduction(
      title: 'Community',
      subTitle: 'Chat with other Moms and certified Nutritionists ',
      imageUrl: 'assets/images/logo.jpg',
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
