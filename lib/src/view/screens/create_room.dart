import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

//must of the OOP principals apply in this part, the createState it's well the
//point of the activity, but still can have a lot of things place in the pure
//class
class CreateRoom extends StatefulWidget {
  // Constructor
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoom();
}

class _CreateRoom extends State<CreateRoom> {
  File? image;

  final ImagePicker _picker = ImagePicker();

  // * THIS IS JUST A SNIPPET THAT I GRABED
  // * In theory this snippet opens the gallery and grabs the image that the user
  // * wants
  Future<void> pickImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path); // Store the image file
      });
    }
  }

  void showPhotoInButton() {
    // TODO: Make that the PhotoSelected by user appeas in the button
    throw UnimplementedError();
  }

  void createRoom(String roomName, File? roomPhoto) {
    // TODO: Call the firebase services to create a room with photo and name
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
