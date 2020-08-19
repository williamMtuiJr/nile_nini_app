import 'package:flutter/material.dart';
import './../constants.dart';
import './../pages/home_page.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          //TODO: Fix DropDownBugs ... should change to checkBox

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Text(
                  'Tell Us More about You',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Height(cm)',
                  icon: Icon(
                    Icons.person,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              Flexible(
                child: TextField(
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Weight(kg)',
                    icon: Icon(
                      Icons.perm_identity,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: CustomDropDownButton(
                  hintText: 'allergies',
                  value: ['allergies', 'eggs', 'meals', 'gluten'],
                ),
              ),
              Flexible(
                child: CustomDropDownButton(
                  hintText: 'diseases',
                  value: ['diseases', 'anaemia', 'heartburns'],
                ),
              ),
              Flexible(
                child: CustomDropDownButton(
                  hintText: 'daily activities',
                  value: ['daily activities', 'sedentary', 'heartburns'],
                ),
              ),
              CustomDropDownButton(
                hintText: 'status',
                value: [
                  'status',
                  'Trimester 1',
                  'Trimester 2',
                  'Trimester 3',
                  'Mom'
                ],
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Flexible(
                child: RoundedButton(
                  title: 'Register',
                  colour: Colors.green,
                  onPressed: () async {
                    //TODO: Implement Send Data to Firebase
                    Navigator.pushNamed(context, HomePage.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CustomDropDownButton
class CustomDropDownButton extends StatefulWidget {
  String hintText;
  List<String> value;

  CustomDropDownButton({
    @required this.hintText,
    @required this.value,
  });

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.hintText,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          widget.hintText = newValue;
        });
      },
      items: widget.value.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
