import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/buttons/room_button.dart';
import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  const Rooms({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  late List<RoomButton> groups;
  @override
  void initState() {
    super.initState();
    groups = [];
    createButtons();
  }

  Map<String, dynamic> fetchGroupMetaData(String user) {
    //I'll see how to work in firebase this shit
    //TODO: implement this
    throw UnimplementedError();
  }

  void reRoutDrawSpace(buttonEnum button) {
    //TODO: See how to implement the metadata in here
    throw UnimplementedError();
  }

  void createButtons() {
    //TODO: Implement the FetchDataGroupMetaData with the buttons constructors
    for (int i = 0; i < 3; i++) {
      groups.add(
        RoomButton(
          onPushFunction: reRoutDrawSpace,
          buttonTitle: 'button ${i.toString()}',
          buttonType: buttonEnum.Room,
          roomPhotoPath: 'assets/images/google_logo.png',
          groupName: 'The Sex Cat Grkasfjsalkjfoup',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(childrenWidget: groups, colors: roomsBackGroundColors);
  }
}
