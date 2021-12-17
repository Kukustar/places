import 'package:flutter/material.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Changed title',
      theme: lightTheme,
      darkTheme: darkTheme,
      // home: SightListScreen()
      // home:  SightDetailsScreen(mocks[0]),
      home: const VisitingScreen(),
    );
  }
}