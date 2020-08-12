import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart'; // For File Upload To Firestore
import 'package:image_picker/image_picker.dart'; // For Image Picker
import 'package:path/path.dart' as Path;

class LogMeals extends StatefulWidget {
  static String id = 'log_meal';

  @override
  _LogMealsState createState() => _LogMealsState();
}

class _LogMealsState extends State<LogMeals> {
  File _image;
  String _uploadedFileURL;

  Future chooseFile() async {
    await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
      setState(() {
        _image = image;
      });
    });
  }

  Future uploadFile() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('chats/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;
    print('File Uploaded');
    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        _uploadedFileURL = fileURL;
      });
    });
  }

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
                  GestureDetector(
                    onTap: () {
                      chooseFile();
                      uploadFile();
                    },
                    child: Container(
                      child: Image(
                        fit: BoxFit.contain,
                        image:
                            AssetImage('assets/images/upload_from_gallery.png'),
                      ),
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
