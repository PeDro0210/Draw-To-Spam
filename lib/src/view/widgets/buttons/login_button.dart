import 'package:draw_to_spam/src/view/widgets/draw_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends DrawButton {
  final String logoPath;

  const LoginButton(
      {super.key,
      required super.onPushFunction,
      required super.buttonTitle,
      required this.logoPath,
      required super.buttonType});

  @override
  Widget build(BuildContext context) {
    return DrawButton(
        onPushFunction: onPushFunction,
        buttonTitle: buttonTitle, //what's the point of this, LMAO
        buttonType: buttonType,
        verticalMargin: 15,
        horizontalMargin: 110,
        verticalPadding: 15,
        childrenWidget: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage(logoPath),
                  )),
              Text(
                buttonTitle,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 25,
                  color: Colors.black,
                ),
              )
            ],
          )
        ]);
  }
}
