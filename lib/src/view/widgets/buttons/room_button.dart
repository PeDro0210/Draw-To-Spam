import 'package:flutter/material.dart';
import 'package:draw_to_spam/src/view/widgets/draw_button.dart';

class RoomButton extends DrawButton {
  final String roomPhotoPath;
  final String groupName;

  const RoomButton({
    super.key,
    required super.onPushFunction,
    required super.buttonTitle,
    required super.buttonType,
    required this.roomPhotoPath,
    required this.groupName,
  });

  @override
  Widget build(BuildContext context) { //TODO: Change padding and margins
    return DrawButton(
      onPushFunction: onPushFunction,
      buttonTitle: buttonTitle,
      buttonType: buttonType,
      background: Colors.black,
      opacity: 0.2,
      verticalPadding: 25,
      verticalMargin: 15,
      horizontalPadding: 25,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      childrenWidget: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  roomPhotoPath,
                  fit: BoxFit.cover, // Ensures the image fits well
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey, // Placeholder for missing image
                    );
                  },
                ),
              ),
            ),
            // Text with constraints and overflow handling
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6, // Adjust width as needed
              ),
              child: Text(
                groupName,
                style: TextStyle(
                 //TODO: Add the style for the text 
                ),
                maxLines: 1, // Limit to one line
                overflow: TextOverflow.ellipsis, // Handle overflow
              ),
            ),
          ],
        ),
      ],
    );
  }
}
