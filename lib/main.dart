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
      home: MyFirstStateFullWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget() : super();

  @override
  Widget build(BuildContext context) {
    int buildCounter = 0;
    buildCounter += 1;
    print(buildCounter);
    return Container(
      child: Center(
        child: Text('Hello $buildCounter'),
      ),
    );
  }
}

class MyFirstStateFullWidget extends StatefulWidget {
  MyFirstStateFullWidget() : super();

  _MyFirstStateFullWidgetState createState() => _MyFirstStateFullWidgetState();
}

class _MyFirstStateFullWidgetState extends State<MyFirstStateFullWidget> {
  int buildCounter = 0;

  void updateCounter(){
    setState(() {
      buildCounter +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    updateCounter();
    print(buildCounter);
    return Container(
      child: Center(
        child: Text('Hello $buildCounter'),
      ),
    );
  }

}