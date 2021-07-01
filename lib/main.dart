import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {

  int buildCounter = 0;

  @override
  Widget build(BuildContext context) {
    buildCounter += 1;
    print(buildCounter);
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

class MyFirstStateFullWidget extends StatefulWidget {
  _MyFirstStateFullWidgetState createState() => _MyFirstStateFullWidgetState();
}

class _MyFirstStateFullWidgetState extends State<MyFirstStateFullWidget> {
  int buildCounter = 0;
  @override
  Widget build(BuildContext context) {
    buildCounter += 1;
    print(buildCounter);
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }

}