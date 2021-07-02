import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SightListScreenState();
  }
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sight List'),
                ],
              ),
            )
        )
    );
  }
}
