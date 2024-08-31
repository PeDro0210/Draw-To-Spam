import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//TODO: comment all of this, each thing cause dude, there's a lot of fucking boilerplate that makes everything unredable

class DrawTextField extends StatefulWidget {
  final void Function(String) onPressed;
  final String fieldTitle;

  const DrawTextField({
    super.key,
    required this.onPressed,
    required this.fieldTitle,
  });

  void buttonPressed(TextEditingController controller) {
    onPressed(controller.text);
    controller.clear();
  }

  @override
  State<DrawTextField> createState() => _DrawTextField();
}

class _DrawTextField extends State<DrawTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFB0B0B0),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                        16.0)), // rounder border for the container that has the textfield, not the pure textfield
              ),
              child: TextField(
                style: const TextStyle(
                  fontSize: 32.0,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: InputBorder
                      .none, //cause of this shit I added all the fucking container
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, //and you are also kinda of a magic number
                    vertical: 6.0, // same as this one
                  ),
                  hintText: widget.fieldTitle,
                  hintStyle: const TextStyle(
                    fontSize: 32.0,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            //this button is specific of the text field, that's why I doesn't extend draw_button and is not in the button dir
            onPressed: () => widget.buttonPressed(_controller),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(16.0)),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20.0, //this fucking 20 is a magic number NGL
              ),
              backgroundColor: const Color(0xFF000000).withOpacity(0.2),
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
            ), // TODO: Change the placeholder
          ),
        ],
      ),
    );
  }
}
