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
                  text: TextSpan(
                      text: 'C',
                      style: Theme.of(context).primaryTextTheme.headline4!.copyWith(color: Colors.green),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'писок\n',
                          style: Theme.of(context).primaryTextTheme.headline4,
                        ),
                        TextSpan(
                          text: 'и',
                          style: Theme.of(context).primaryTextTheme.headline4!.copyWith(color: Colors.yellow),
                        ),
                        TextSpan(
                            text: 'нтересных мест',
                            style: Theme.of(context).primaryTextTheme.headline4
                        )
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
