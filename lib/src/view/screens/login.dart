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
  // Constructor
  const Login({super.key});

  void manageAuth(buttonEnum buttonType) {
    // TODO: implement login auth with firebase and google
    throw UnimplementedError();
  }

  // Encapsulation, fuck that shit
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
              const StyledText(
                text: "Join Using",
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15)),
              LoginButton(
                onPushFunction: manageAuth,
                buttonTitle: 'oogle',
                buttonType: buttonEnum.GOOGLE,
                logoPath: 'assets/images/google_logo.png',
              ),
              LoginButton(
                  onPushFunction: manageAuth,
                  buttonTitle: 'Apple',
                  buttonType: buttonEnum.APPLE,
                  logoPath: 'assets/images/google_logo.png')
            ],
          ),
        )
      ],
      colors: loginBackgroundColors,
    );
  }
}
