import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetailsScreen extends StatefulWidget {
  SightDetailsScreen(this.sight, {Key? key}) : super(key: key);
  final Sight sight;

  @override
  State<StatefulWidget> createState() {
    return _SightDetailsScreenState();
  }
}

class _SightDetailsScreenState extends State<SightDetailsScreen> {

  final topPadding24 = EdgeInsets.only(top: 24.0);
  final Color customGreyColor = Color.fromRGBO(124, 126, 146, 0.56);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 361,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.sight.url.toString()),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 36,
                  left: 16,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 32,
                      height: 32,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.sight.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Text(
                            widget.sight.type.toString(),
                            style: TextStyle(
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
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black
                            ),
                          ),
                        ),
                    ),
                    Padding(
                        padding: topPadding24,
                        child: Container(
                          height: 48,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                        ),
                    ),
                    Padding(
                      padding: topPadding24,
                      child: const Divider(
                        height: 0.8,
                        color: const Color.fromRGBO(124, 126, 146, 0.56),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:24, bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 22,
                                  height: 19,
                                  color: customGreyColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9),
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
                            )
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 22,
                                  height: 19,
                                  color: customGreyColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9),
                                    child: RichText(
                                      text: TextSpan(
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
