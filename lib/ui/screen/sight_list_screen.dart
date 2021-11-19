import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/card_widgets/place_card.dart';
import 'package:places/ui/widgets/navigation_bar.dart';

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
        child: AppBar(
          flexibleSpace: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: RichText(
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      text: 'C',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 32,
                          fontWeight: FontWeight.w700
                      ),
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
                            style: TextStyle(color: Colors.black))
                      ])),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InterestingPlaceCard(sight: mocks[0]),
            InterestingPlaceCard(sight: mocks[1]),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBar(
          currentIndex: 0,
      ),
    );
  }
}
