import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:draw_to_spam/src/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';

//must of the OOP principals apply in this part, the createState it's well the
//point of the activity, but still can have a lot of things place in the pure
//class
class BaseScreen extends StatelessWidget {
  final List<Widget> childrenWidget;
  final List<Color> colors;
  final TopBarEnums screenType;

  // Constructor
  const BaseScreen(
      {super.key,
      required this.childrenWidget,
      required this.colors,
      required this.screenType});

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
          appBar: screenType == TopBarEnums.noAppBar
              ? null
              : DrawAppBar(screenType: screenType),
          resizeToAvoidBottomInset:
              false, //for the keyboard issue with the resizing
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: childrenWidget),
          ),
        ));
  }
}
