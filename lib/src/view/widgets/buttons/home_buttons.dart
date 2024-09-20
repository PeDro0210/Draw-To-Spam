import 'package:draw_to_spam/src/view/widgets/draw_button.dart';
import 'package:flutter/material.dart';

class HomeButton extends DrawButton {
  const HomeButton({
    super.key,
    required super.onPushFunction,
    required super.buttonTitle,
    required super.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    return DrawButton(
        onPushFunction: onPushFunction,
        buttonTitle: buttonTitle,
        buttonType: buttonType,
        background: Colors.black,
        //heck yeah, fucking magic numbers
        opacity: 0.2,
        verticalPadding: 16,
        horizontalMargin: 16,
        verticalMargin: 32,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        childrenWidget: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonTitle,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 30,
                  color: Colors.white,
                ),
              )
            ],
          )
        ]);
  }
}

