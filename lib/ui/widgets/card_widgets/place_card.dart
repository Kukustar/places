import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/widgets/card_widgets/card_header.dart';
import 'package:places/ui/widgets/image_loader.dart';

abstract class SightCard {
  /// method must return Widget with text about status
  /// of work time now in place
  Widget getFooterCardText();

  /// method must return style for description block
  TextStyle getCardTextStyle();

  /// method must return card top block with type and
  /// icons
  CardHeader getCardHeader();

  /// method must card text
  String getCardText();
}

class Card extends StatelessWidget implements SightCard {
  const Card({
    Key? key,
    required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  TextStyle getCardTextStyle() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    );
  }

  @override
  Widget getFooterCardText() {
    return Container();
  }

  @override
  CardHeader getCardHeader() {
    return CardHeader(
        sight.type.toString(), const <String>['assets/icons/heart.png']);
  }

  @override
  String getCardText() {
    return sight.details.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Theme.of(context).cardColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      child: ImageLoader(sight.url.toString()),
                      width: double.infinity,
                      height: 96,
                    ),
                    getCardHeader()
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              sight.name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            RichText(
                                maxLines: 3,
                                text: TextSpan(
                                    text: getCardText(),
                                    style: getCardTextStyle()))
                          ]),
                      getFooterCardText(),
                      SizedBox(height: 16)
                    ],

                  ),

                )
              ],
            ),
          ),
        ));
  }
}

/// Simple card for interested places
class InterestingPlaceCard extends Card {
  const InterestingPlaceCard({Key? key, required this.sight})
      : super(key: key, sight: sight);

  @override
  final Sight sight;

  @override
  String getCardText() {
    return sight.workTime.toString();
  }
}

/// Extended card for already visit place screen
class WantToVisitPlaceCard extends Card {
  const WantToVisitPlaceCard({Key? key, required Sight sight})
      : super(key: key, sight: sight);

  @override
  TextStyle getCardTextStyle() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.green,
    );
  }

  @override
  CardHeader getCardHeader() {
    return CardHeader(
        sight.type.toString(),
        const <String>[
          'assets/icons/calendar_white.png',
          'assets/icons/cross.png'
        ]
    );
  }

  @override
  Widget getFooterCardText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
          text: TextSpan(
            style: super.getCardTextStyle(),
            text: 'Закрыто до 9:00',
          )
      ),
    );
  }

  @override
  String getCardText() {
    return sight.timeOfVisit.wantToVisit.toString();
  }
}


class AlreadyVisitPlaceCard extends Card {
  const AlreadyVisitPlaceCard({
    Key? key,
    required Sight sight,
  }) : super(key: key, sight: sight);

  @override
  CardHeader getCardHeader() {
    return CardHeader(
        sight.type.toString(),
        const <String>[
          'assets/icons/Share.png',
          'assets/icons/cross.png'
        ]
    );
  }

  @override
  String getCardText() {
    return sight.timeOfVisit.alreadyVisit.toString();
  }

  @override
  Widget getFooterCardText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          style: super.getCardTextStyle(),
          text: 'Закрыто до 9:00',
        )
      ),
    );
  }
}

