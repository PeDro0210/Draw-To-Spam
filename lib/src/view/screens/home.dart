import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/buttons/home_buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  //routing done IG
  void routingScreens(BuildContext context, buttonEnum buttonPressed) {
    switch (buttonPressed) {
      case buttonEnum.Rooms:
        Navigator.pushNamed(context, "/rooms");
        break;
      case buttonEnum.JoinRooms:
        Navigator.pushNamed(context, "/join_rooms");
        break;
      case buttonEnum.CreateRooms:
        Navigator.pushNamed(context, "/create_rooms");
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screenType: TopBarEnums.initialScreen,
      childrenWidget: [
        HomeButton(
          onPushFunction: (buttonEnum buttonType) =>
              routingScreens(context, buttonType),
          buttonTitle: 'Rooms',
          buttonType: buttonEnum.Rooms,
        ),
        HomeButton(
          onPushFunction: (buttonEnum buttonType) =>
              routingScreens(context, buttonType),
          buttonTitle: 'Join Rooms',
          buttonType: buttonEnum.JoinRooms,
        ),
        HomeButton(
          onPushFunction: (buttonEnum buttonType) =>
              routingScreens(context, buttonType),
          buttonTitle: 'Create Rooms',
          buttonType: buttonEnum.CreateRooms,
        ),
        const SizedBox(
          height: 32,
        )
      ],
      colors: homeBackgroundColors,
    );
  }
}
