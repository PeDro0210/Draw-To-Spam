import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/buttons/home_buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void routingScreens(buttonEnum buttonPressed) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        screenType: TopBarEnums.initialScreen,
        childrenWidget: [
          HomeButton(
              onPushFunction: routingScreens,
              buttonTitle: 'Rooms',
              buttonType: buttonEnum.Rooms),
          HomeButton(
              onPushFunction: routingScreens,
              buttonTitle: 'Join Rooms',
              buttonType: buttonEnum.JoinRooms),
          HomeButton(
              onPushFunction: routingScreens,
              buttonTitle: 'Create Rooms',
              buttonType: buttonEnum.CreateRooms),
        ],
        colors: homeBackgroundColors);
  }
}
