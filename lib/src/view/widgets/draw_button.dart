import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:flutter/material.dart';

class DrawButton extends StatelessWidget {
  //Dude, imagine that the constructor could manage all the variables lmao
  final String buttonTitle;
  final void Function(buttonEnum) onPushFunction;
  final buttonEnum buttonType;
  final List<Widget>? childrenWidget;
  final double? verticalMargin;
  final double? horizontalMargin;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? background;
  final double? opacity;
  final OutlinedBorder?  shape;

  const DrawButton(
      {super.key,
      required this.onPushFunction,
      required this.buttonTitle,
      required this.buttonType,
      this.verticalMargin,
      this.horizontalMargin,
      this.verticalPadding,
      this.horizontalPadding,
      this.childrenWidget,
      this.background,
      this.opacity,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(//margins of all the container
            vertical: verticalMargin ?? 0.0,
            horizontal: horizontalMargin ?? 0.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric( //you know what padding is
                  vertical: verticalPadding ?? 0.0,
                  horizontal: horizontalPadding ?? 0.0
                ),
                shape: shape,
                backgroundColor: background?.withOpacity(opacity ?? 1.0)),
            onPressed: () => onPushFunction(buttonType), //dude different things depending on the button
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: childrenWidget ?? [], //alld the widgets that the button could have
            )));
  }
}
