import 'package:draw_to_spam/src/materials/screen_colors.dart';
import 'package:draw_to_spam/src/utils/button_enum.dart';
import 'package:draw_to_spam/src/view/widgets/base_screen.dart';
import 'package:draw_to_spam/src/view/widgets/buttons/room_button.dart';
import 'package:flutter/material.dart';

//TODO: When ever the app closes, let the API be called again

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
    for (int i = 0; i < 300; i++) {
      groups.add(
        RoomButton(
          onPushFunction: reRoutDrawSpace,
          buttonTitle: 'button ${i.toString()}',
          buttonType: buttonEnum.Room,
          roomPhotoPath:
              'https://pbs.twimg.com/media/GSfgKVFXIAA-5eG?format=jpg&name=medium',
          groupName: 'The Sex Cat Group',
          peopleCounter: 0,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      childrenWidget: [
        Expanded(
          child: ListView.builder(
            itemCount: groups.length,
            itemBuilder: (context, index) {
              return groups[index];
            },
          ),
        ),
      ],
      colors: roomsBackGroundColors,
    );
  }
}
