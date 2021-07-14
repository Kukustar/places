import 'package:flutter/material.dart';

/// SightListScreen
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
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(112.0),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 40.0,
              ),
              child: RichText(
                maxLines: 2,
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'C',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                          text: 'писок\n',
                          style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'и',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      TextSpan(
                          text: 'нтересных мест',
                          style: TextStyle(color: Colors.black)
                      )
                    ])),
            )),
       );
  }
}
