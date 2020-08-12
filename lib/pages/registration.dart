import 'package:nnapp/constants.dart';
//import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
//import '../components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:nnapp/pages/chat_screen.dart';
import 'package:nnapp/pages/home_page.dart';
import 'package:nnapp/pages/login_screen.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final messageTextController = TextEditingController();
  final messageTextController2 = TextEditingController();

  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String first_name;
  String last_name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      height: 200.0,
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  controller: messageTextController2,
//                obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    first_name = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'First Name',
                    icon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  controller: messageTextController,
//                obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    last_name = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Last Name',
                    icon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email',
                    icon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password',
                    icon: Icon(
                      Icons.lock,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                  title: 'Register',
                  colour: Colors.green,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });

                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);

                      if (newUser != null) {
                        Navigator.pushNamed(context, HomePage.id);
                      }

                      //Send username to firestore
                      messageTextController.clear();
                      messageTextController2.clear();
                      _firestore.collection('user').add({
                        'first_name': first_name,
                        'last_name': last_name,
                      });
//                    _firestore.collection('messages').add({
//                      'name': first_name,
//                      'text': '$first_name has joined the group',
//                      'sender': email,
//                      'timestamp': DateTime.now().millisecondsSinceEpoch,
//                    });

                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                FlatButton(
                  child: Text("Already Have an Account"),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
