import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader(this.sightType, this.iconsList,  {Key? key}) : super(key: key);
  final String sightType;
  final List<String> iconsList;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
              sightType,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              )
          ),
          SizedBox(
              child: Row(
                children: <Widget>[
                  for (String icon in iconsList) Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: InkWell(
                      onTap: () {
                        print('$icon was tapped');
                      },
                      child: Image.asset(
                          icon,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}