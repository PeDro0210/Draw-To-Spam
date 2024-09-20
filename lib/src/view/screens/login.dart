import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/logo_display.dart';
import 'package:draw_to_spam/src/view/widgets/styled_text.dart';
import 'package:flutter/material.dart';
import '../widgets/buttons/login_button.dart';

/*
/ must of the OOP principals apply in this part, the createState it's well the
/ point of the activity, but still can have a lot of things place in the pure
/ class
*/
class Login extends StatelessWidget {
  const Login({super.key});

  void manageAuth(BuildContext context, buttonEnum buttonPressed) {
    // TODO: implement login auth with Firebase and Google

    // For debugging, navigating to home screen

    switch (buttonPressed) {
      case buttonEnum.GOOGLE:
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/home',
          (route) => false,
        );
        break;
      case buttonEnum.APPLE:
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/home',
          (route) => false,
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screenType: TopBarEnums.noAppBar,
      childrenWidget: [
        const LogoDisplay(),
        Container(
          margin: const EdgeInsets.only(top: 128),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const StyledText(text: "Join Using"),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15)),
              LoginButton(
                onPushFunction: (buttonEnum buttonType) =>
                    manageAuth(context, buttonType),
                buttonTitle: 'Google',
                buttonType: buttonEnum.GOOGLE,
                logoPath: 'assets/images/google_logo.png',
              ),
              LoginButton(
                onPushFunction: (buttonEnum buttonType) =>
                    manageAuth(context, buttonType),
                buttonTitle: 'Apple',
                buttonType: buttonEnum.APPLE,
                logoPath: 'assets/images/apple_logo.png',
              ),
            ],
          ),
        ),
      ],
      colors: loginBackgroundColors,
    );
  }
}
