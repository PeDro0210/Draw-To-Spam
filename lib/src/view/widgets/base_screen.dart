import 'package:flutter/material.dart';

//must of the OOP principals apply in this part, the createState it's well the
//point of the activity, but still can have a lot of things place in the pure
//class
class BaseScreen extends StatelessWidget {
  final List<Widget> childrenWidget;
  final List<Color> colors;

  // Constructor
  const BaseScreen({
  super.key, 
  required this.childrenWidget, 
  required this.colors
  });

  // Encapsulation, fuck that shit
  @override
  Widget build(BuildContext context) {

    return Container(
        // ** Background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:childrenWidget 
        ),
      ),
    ));
  }
}

