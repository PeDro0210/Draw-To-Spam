import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: Row(
          children: [
            //* I could refactor this, but nah
            const Expanded(
                child: Divider(
              color: Colors.white,
              thickness: 1,
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              child: Text(
                '    $text    ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const Expanded(
                child: Divider(
              color: Colors.white,
              thickness: 1,
            ))
          ],
        ));
  }
}
