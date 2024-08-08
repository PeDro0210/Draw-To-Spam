import 'package:draw_to_spam/src/view/widgets/people_counter.dart';
import 'package:flutter/material.dart';
import 'package:draw_to_spam/src/view/widgets/draw_button.dart';

class RoomButton extends DrawButton {
  final String roomPhotoPath;
  final String groupName;
  final int peopleCounter;

  const RoomButton({
    super.key,
    required super.onPushFunction,
    required super.buttonTitle,
    required super.buttonType,
    required this.roomPhotoPath,
    required this.groupName,
    required this.peopleCounter
  });

  @override
  Widget build(BuildContext context) {
    //TODO: Change padding and margins
    return DrawButton(
      onPushFunction: onPushFunction,
      buttonTitle: buttonTitle,
      buttonType: buttonType,
      background: Colors.black,
      opacity: 0.2,
      verticalPadding: 15,
      verticalMargin: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      childrenWidget: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  roomPhotoPath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey, // Placeholder for missing image
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width *
                    0.6, // Adjust width as needed
              ),
              child: Text(
                groupName,
                style: const TextStyle(fontFamily: 'Inter', fontSize: 25),
                maxLines: 1, // Limit to one line
                overflow: TextOverflow.ellipsis, // Handle overflow
              ),
            ),
            const SizedBox(width: 10),
            // TODO: add the people counter
            PeopleCounter(peopleCounter: peopleCounter)
          ],
        ),
      ],
    );
  }
}
