import 'package:flutter/material.dart';

class LogMeals extends StatelessWidget {
  static String id = 'log_meal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/take_photo.png'),
                    ),
                  ),
                  Container(
                    child: Image(
                      fit: BoxFit.contain,
                      image:
                          AssetImage('assets/images/upload_from_gallery.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text('Try Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
