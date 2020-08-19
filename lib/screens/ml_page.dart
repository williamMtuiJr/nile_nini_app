import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';

class MlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: MyImagePicker())));
  }
}

class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();
}

class MyImagePickerState extends State {
  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageURI = image;
      path = image.path;
    });
  }

  Future getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageURI = image;
      path = image.path;
    });
  }

  Future classifyImage() async {
    await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
    var output = await Tflite.runModelOnImage(path: path);
    setState(() {
      result = output.toString();
      result2 = result.substring(51, 64) + '\n' + result.substring(2, 20);
      result3 = result.substring(14, 20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          imageURI == null
              ? Text('No image selected.')
              : Image.file(imageURI,
                  width: 299, height: 299, fit: BoxFit.cover),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.fromLTRB(100, 30, 0, 0),
                child: RaisedButton(
                  onPressed: () => getImageFromCamera(),
                  child: Row(
                    children: [
                      //Text('Take a Photo  '),
                      Icon(Icons.add_a_photo, size: 76, color: Colors.green)
                    ],
                  ),
                  textColor: Colors.white,
                  color: Colors.white60,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
              Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: RaisedButton(
                    onPressed: () => getImageFromGallery(),
                    child: Row(
                      children: [
                        //Text('Pick Photo From Gallery  '),
                        Icon(
                          Icons.add_to_photos,
                          size: 76,
                          color: Colors.green,
                        )
                      ],
                    ),
                    textColor: Colors.white,
                    color: Colors.white60,
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: RaisedButton(
                onPressed: () => classifyImage(),
                child: Text('Identify'),
                textColor: Colors.white,
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              )),
          result == null
              ? Text('Result')
              : Text(result,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 17.5))
        ])));
  }
}

File imageURI;
String result;
String result2;
String result3;
String path;
