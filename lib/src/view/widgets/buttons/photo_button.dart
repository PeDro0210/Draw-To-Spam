import 'dart:io';
import 'package:draw_to_spam/src/view/widgets/draw_button.dart';
import 'package:flutter/material.dart';

class PhotoButton extends DrawButton {
  final File? image;

  const PhotoButton(
      {super.key,
      required this.image,
      required super.onPushFunction,
      required super.buttonTitle,
      required super.buttonType});

  @override
  Widget build(BuildContext context) {
    return DrawButton(
      onPushFunction: onPushFunction,
      buttonTitle: buttonTitle,
      buttonType: buttonType,
      verticalPadding: 64,
      horizontalMargin: 32,
      background: Colors.black,
      opacity: 0.2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      childrenWidget: [
        SizedBox(
          width: 200,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: image != null
                ? Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ) // Load the image dynamically if available
                : Image.asset(
                    "assets/images/plus_sign_button.png",
                  ),
          ),
        ),
      ],
    );
  }
}
