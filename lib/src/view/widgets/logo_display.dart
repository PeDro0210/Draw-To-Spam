import 'package:flutter/material.dart';

class LogoDisplay extends StatelessWidget {
  const LogoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.white,
      child: ClipOval(
          child: Image.asset(
        'assets/images/logo.png',
      )),
    );
  }
}
