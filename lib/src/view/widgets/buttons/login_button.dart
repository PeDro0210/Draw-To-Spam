import 'package:draw_to_spam/src/utils/login_enum.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{
  final String buttonTitle;
  final void Function(loginEnum) onPushFunction;
  final loginEnum buttonType;
  final String logoPath;

  const LoginButton({
    super.key,
    required this.onPushFunction,
    required this.buttonTitle,
    required this.buttonType,
    required this.logoPath
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 110),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () => onPushFunction(buttonType), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image(image: AssetImage(logoPath),)
            ),
            Text(
              buttonTitle,
              style: const TextStyle(
                fontFamily: 'Inter', // Replace with your desired font family
                fontSize: 25,
                color: Colors.black, // Replace with your desired font color
              ),
            )
          ],
        )
      )
    );
  }
}