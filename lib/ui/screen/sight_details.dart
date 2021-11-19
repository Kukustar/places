import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/widgets/image_loader.dart';

class SightDetailsScreen extends StatefulWidget {
  const SightDetailsScreen(this.sight, {Key? key}) : super(key: key);
  final Sight sight;

  @override
  State<StatefulWidget> createState() {
    return _SightDetailsScreenState();
  }
}

class _SightDetailsScreenState extends State<SightDetailsScreen> {

  final EdgeInsets topPadding24 = const EdgeInsets.only(top: 24.0);
  final Color customGreyColor = const Color.fromRGBO(124, 126, 146, 0.56);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 361,
                  width: double.infinity,
                  child: ImageLoader(widget.sight.url.toString()),
                ),
                Positioned(
                  top: 36,
                  left: 16,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 32,
                        height: 32,
                        color: Colors.white,
                        child: Image.asset('assets/icons/Vector.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.sight.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            widget.sight.type.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'закрыто до 9:00',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: customGreyColor
                                    ),
                                ),
                              ),
                          )
                        ]
                      )
                    ),
                    Padding(
                        padding: topPadding24,
                        child: RichText(
                          text: TextSpan(
                            text: widget.sight.details.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ),
                    Padding(
                        padding: topPadding24,
                        child: SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Image.asset('assets/icons/Union.png'),
                              label: const Text('ПОСТРОИТЬ МАРШРУТ')
                          ),
                        ),
                    ),
                    Padding(
                      padding: topPadding24,
                      child: const Divider(
                        height: 0.8,
                        color: Color.fromRGBO(124, 126, 146, 0.56),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 22,
                                height: 19,
                                child: Image.asset(
                                  'assets/icons/Calendar.png',
                                  color: customGreyColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Запланировать',
                                      style: TextStyle(
                                          color: customGreyColor,
                                          fontWeight: FontWeight.normal
                                      )
                                    ),
                                  )
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 22,
                                height: 19,
                                child: Image.asset(
                                    'assets/icons/heart.png',
                                    color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9),
                                  child: RichText(
                                    text: const TextSpan(
                                        text: 'В избранное',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal
                                        )
                                    ),
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    )
                    // Padding(padding: )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
