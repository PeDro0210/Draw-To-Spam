import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/logo_display.dart';
import 'package:draw_to_spam/src/view/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:draw_to_spam/src/view/widgets/styled_text.dart';

class JoinRoom extends StatelessWidget {
  const JoinRoom({super.key});

  void joinRoom(String roomName) {
    //take the photo from the class it self
    // TODO: Call the firebase services to create a room with photo and name
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        screenType: TopBarEnums.normalScreen,
        childrenWidget: [
          const StyledText(text: "Join room"),
          const SizedBox(height: 16),
          DrawTextField(
            fieldTitle: "ROOM NAME",
            onPressed: joinRoom,
          ),
          const SizedBox(height: 32),
          const LogoDisplay(),
          const SizedBox(
            //for centering the column a little bit more
            height: 64,
          )
        ],
        colors: createRoomsBackGroundColors);
  }
}
