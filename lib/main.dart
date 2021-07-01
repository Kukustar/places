import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Changed title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  // void getContext(){
  //   print(context.runtimeType);
  // }

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
  MyFirstStateFullWidget({Key? key}) : super(key: key);

  _MyFirstStateFullWidgetState createState() => _MyFirstStateFullWidgetState();
}

class _MyFirstStateFullWidgetState extends State<MyFirstStateFullWidget> {
  int buildCounter = 0;

  void getContext() {
    print('${context.runtimeType}');
  }

  void updateCounter(){
    setState(() {
      buildCounter +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    updateCounter();
    print(buildCounter);
    getContext();
    return Container(
      child: Center(
        child: Text('Hello $buildCounter'),
      ),
    );
  }

}