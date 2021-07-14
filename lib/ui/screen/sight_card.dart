import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';


class SightCard extends StatelessWidget {
  SightCard(this.sight, {Key? key}) : super(key: key);
  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 188,
          width: 328,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(sight.url.toString()),
                  fit: BoxFit.cover)
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 88,
            width: 328,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.grey.shade100
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.0,
                  top: 16.0
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sight.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    RichText(
                      maxLines: 3,
                      text: TextSpan(
                        text: sight.details.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey
                        )
                      ),
                    )
                  ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            child: Container(
              width: 328,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      sight.type.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      )
                    ),
                    Container(
                      color: Colors.grey.shade100,
                      width: 20,
                      height: 18,
                    )
                  ],
                ),
              ),
            ),
        )
      ],
    );
  }
}
