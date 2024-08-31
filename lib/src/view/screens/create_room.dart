import 'dart:io';
import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/buttons/photo_button.dart';
import 'package:draw_to_spam/src/view/widgets/text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:draw_to_spam/src/view/widgets/styled_text.dart';

//must of the OOP principals apply in this part, the createState it's well the
//point of the activity, but still can have a lot of things place in the pure
//class
class CreateRoom extends StatefulWidget {
  final String uid;
  // Constructor
  const CreateRoom({super.key, required this.uid});

  @override
  State<CreateRoom> createState() => _CreateRoom();
}

class _CreateRoom extends State<CreateRoom> {
  File? image;

  final ImagePicker _picker = ImagePicker();

  // * THIS IS JUST A SNIPPET THAT I GRABED
  // * In theory this snippet opens the gallery and grabs the image that the user
  // * wants
  Future<void> pickImage(buttonEnum type) async {
    //At the end, it actualyy worked out LMAO
    //Is just for having order the enum at this point
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

  void createRoom(String roomName) {
    //take the photo from the class it self
    // TODO: Call the firebase services to create a room with photo and name
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(childrenWidget: [
      const StyledText(text: "Add Photo"),
      const SizedBox(height: 16),
      DrawTextField(
        fieldTitle: "ROOM NAME",
        onPressed: createRoom,
      ),
      const SizedBox(height: 64),
      PhotoButton(
        onPushFunction: pickImage,
        buttonTitle: "Add Photo",
        buttonType: buttonEnum.PhotoButton,
        image: image,
      ),
    ], colors: createRoomsBackGroundColors);
  }
}
