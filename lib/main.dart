import 'package:draw_to_spam/src/view/screens/rooms.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Draw To Spam',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(
                  255, 23, 96, 26)
              ), //this green color needs changes ngl
          useMaterial3: true,
        ),
        // TODO:Implement the navigator
        home: const Rooms() //this is for debugging purpose
        );
  }
}
