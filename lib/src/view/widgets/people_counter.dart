import 'package:flutter/material.dart';

class PeopleCounter extends StatelessWidget {
  final String peopleCounterPhoto = 'assets/images/people.png';
  final int peopleCounter;

  PeopleCounter({super.key, required this.peopleCounter});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 85/2,
          width: 100/2,
          child: Image.asset(
            peopleCounterPhoto,
            fit: BoxFit.contain,
          )
        ),
        SizedBox(
          width: 100/2,
            child: Center(
            child: Text("$peopleCounter/10"),
            ),
        )
      ],
    );
  }
}
