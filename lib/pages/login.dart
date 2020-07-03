import 'package:flutter/material.dart';
//import 'package:nile_nini/common/Validation.dart';
import 'package:nnapp/common/Validation.dart';
import 'package:nnapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  TextEditingController usernameController;
  TextEditingController phoneNumberController;
  TextEditingController passwordController;

  FocusNode usernameNode, phoneNumberNode, passwordNode;
  Validations _validations = Validations();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              Form(
                key: _formKey,
                autovalidate: autoValidate,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: TextFormField(
                        cursorColor: Colors.green,
                        validator: _validations.validateUserName,
                        controller: usernameController,
                        focusNode: usernameNode,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(labelText: "Username"),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: TextFormField(
                        cursorColor: Colors.green,
                        validator: _validations.validateMobileNumber,
                        controller: phoneNumberController,
                        focusNode: phoneNumberNode,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(labelText: "Phone Number"),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: TextFormField(
                        cursorColor: Colors.green,
                        validator: _validations.validatePassword,
                        controller: passwordController,
                        focusNode: passwordNode,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(labelText: "Password"),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        child: Text("Login"),
                        onPressed: () {
                          login(context);
                        },
                      ),
                      RaisedButton(
                        child: Text("Sign Up"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/fifth');
                        },
                      ),
                    ],
                  ),
                ),
              )
//          TextFormField(
//            controller: userName,
//            keyboardType: TextInputType.text,
//           // initialValue: 'userName',
//          )
            ],
          ),
        ),
      ),
    );
  }

  Widget login(BuildContext context) {
    passwordNode.unfocus();
    phoneNumberNode.unfocus();
    setState(() {
      Navigator.pushNamed(context, HomePage.id);
      autoValidate = true;
    });
  }
}
