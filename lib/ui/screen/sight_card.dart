import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/widgets/imageLoader.dart';


class SightCard extends StatelessWidget {
  SightCard(this.sight, {Key? key}) : super(key: key);
  final Sight sight;

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SightDetailsScreen(sight))
          ),
          child: Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: ImageLoader(sight.url.toString()),
                      width: double.infinity,
                      height: 96,
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            sight.type.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )
                              // style: textStyleSmall14BoldWhite,
                          ),
                          Image.asset('assets/icons/heart.png')
                          // Icon(
                          //   Icons.favorite_border,
                          //   color: Colors.white,
                          //   size: 24,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    height: 96,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sight.name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        RichText(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: sight.details.toString(),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,

                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
