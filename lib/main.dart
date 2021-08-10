import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Changed title',
      theme: ThemeData(
        backgroundColor: Colors.white,
        canvasColor: Colors.white,
        fontFamily: 'Roboto'
        // fontFamily:
      ),
      home: SightListScreen(),
    );
  }
}