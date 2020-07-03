import 'package:flutter/material.dart';
//import 'package:nile_nini/pages/launch_page.dart';
import 'package:nnapp/pages/launch_page.dart';
//import 'package:nile_nini/pages/login.dart';
import 'package:nnapp/pages/login.dart';
//import 'package:nile_nini/pages/splash.dart';
import 'pages/splash.dart';
import 'package:splashscreen/splashscreen.dart';

//import 'package:nile_nini/pages/language.dart';
import 'package:nnapp/pages/language.dart';
//import 'package:nile_nini/pages/registration.dart';
import 'package:nnapp/pages/registration.dart';
import './pages/chat_screen.dart';
import 'package:nnapp/pages/home_page.dart';
import 'package:nnapp/pages/login_screen.dart';
import 'package:nnapp/pages/calorie_counter.dart';
import 'package:nnapp/pages/log_meals.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/second': (context) => Language(),
        '/third': (context) => LaunchPage(),
        '/fourth': (context) => LoginPage(),
        '/fifth': (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        HomePage.id: (context) => HomePage(),
        LoginScreen.id: (context) => LoginScreen(),
        CalorieCounter.id: (context) => CalorieCounter(),
        LogMeals.id: (context) => LogMeals(),
      },
    );
  }
}
