import 'package:draw_to_spam/src/utils/top_bar_enums.dart';
import 'package:flutter/material.dart';

class DrawAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TopBarEnums screenType;

  const DrawAppBar({super.key, required this.screenType});

  void routingToSettings() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF2E2C2C), // Adjust as needed
      elevation: 0, // Remove shadow if transparent
      leading: screenType == TopBarEnums.normalScreen
          ? IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            )
          : null,
      actions: [
        IconButton(
          onPressed: routingToSettings,
          icon: const Icon(Icons.settings, color: Colors.white),
        ),
      ],
      // You can use leading and actions to control left and right placement
      // For full customization, you can use the flexible widget
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight); //idunno, magic needed to be an AppBar IG
}
