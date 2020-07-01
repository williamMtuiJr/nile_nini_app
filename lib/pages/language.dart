import 'package:flutter/material.dart';
//import 'package:nile_nini/pages/launch_page.dart';
import 'launch_page.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 300,
                child: Image.asset('assets/images/logo.jpg')
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Chagua lugha/Choose a language',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            ListTile(
              title: Text("Kiswahili"),
              onTap: (){},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("English"),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>LaunchPage())),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider()
          ]),
    );
  }
}
