import 'package:flutter/material.dart';

class MedicalProfile extends StatefulWidget {
  @override
  _MedicalProfileState createState() => _MedicalProfileState();
}

class _MedicalProfileState extends State<MedicalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Status'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(),
    );
  }
}
