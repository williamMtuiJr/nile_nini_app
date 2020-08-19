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
import './../common/Validation.dart';
import './../screens/user_profile.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  TextEditingController firstNameController;
  TextEditingController lastNameController;
  TextEditingController emailController;
  TextEditingController passwordController;

  FocusNode firstNameNode, lastNameNode, emailNode, passwordNode;

//  final messageTextController = TextEditingController();
//  final messageTextController2 = TextEditingController();

  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String first_name;
  String last_name;
  String email;
  String password;

  Validations _validations = Validations();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: _formKey,
              autovalidate: autoValidate,
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
                  Flexible(
                    child: TextFormField(
                      validator: _validations.validateName,
                      controller: firstNameController,
                      focusNode: firstNameNode,
                      textInputAction: TextInputAction.done,
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
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Flexible(
                    child: TextFormField(
                      validator: _validations.validateName,
                      controller: lastNameController,
                      focusNode: lastNameNode,
                      textInputAction: TextInputAction.done,
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
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Flexible(
                    child: TextFormField(
                      validator: _validations.validateEmail,
                      controller: emailController,
                      focusNode: emailNode,
                      textInputAction: TextInputAction.done,
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
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Flexible(
                    child: TextFormField(
                      validator: _validations.validatePassword,
                      controller: passwordController,
                      obscureText: true,
                      focusNode: passwordNode,
                      textInputAction: TextInputAction.done,
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
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Flexible(
                    child: RoundedButton(
                      title: 'Register',
                      colour: Colors.green,
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                          autoValidate = true;
                        });

                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);

                          if (newUser != null) {
                            Navigator.pushNamed(context, HomePage.id);
                            //TODO: Should Navigate to User Profiles Page
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => UserProfile()),
//                            );
                          }

                          //Clear Text Controllers
                          firstNameController.clear();
                          lastNameController.clear();
                          passwordController.clear();
                          emailController.clear();

                          //Send userDetails to Firebase
                          _firestore.collection('user').add({
                            'first_name': first_name,
                            'last_name': last_name,
                          });

                          setState(() {
                            showSpinner = false;
                          });
                        } catch (e) {
                          print(e);
                          setState(() {
                            showSpinner = false;
                          });
                        }
                      },
                    ),
                  ),
                  Flexible(
                    child: FlatButton(
                      child: Text("Already Have an Account"),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
