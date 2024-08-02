import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/logo_display.dart';
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
      childrenWidget: [
            const LogoDisplay(),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      width: 350,
                      child: Row(
                        children: [
                          //* I could refactor this, but nah
                          Expanded(
                              child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          )),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 15.0),
                            child: Text(
                              '    Join Using    ',
                              style: TextStyle(
                                color:
                                    Colors.white,
                                fontSize: 18, 
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ))
                        ],
                      )),
                      // * FUCK REFACTORING
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
            )],
          colors: loginBackgroundColors,);

  }
}

