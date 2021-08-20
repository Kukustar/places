import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';

/// SightListScreen
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

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
            preferredSize: const Size.fromHeight(112.0),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 40.0,
              ),
              child: RichText(
                maxLines: 2,
                textAlign: TextAlign.left,
                text: const TextSpan(
                    text: 'C',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                    children: <InlineSpan>[
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
                    ]
                )
              ),
            )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <SightCard>[
              SightCard(mocks[0]),
              SightCard(mocks[1])
            ],
          ),
        ),
       );
  }
}
