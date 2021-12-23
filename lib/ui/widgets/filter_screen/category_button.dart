import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.svgAsset,
    required this.name,
    required this.isSelected,
    required this.onButtonTap,
  }) : super(key: key);

  final String svgAsset;
  final String name;
  final bool isSelected;
  final GestureTapCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE2F2E3),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onButtonTap,
                      customBorder: const CircleBorder(),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SvgPicture.asset(svgAsset),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 38,
                    child: isSelected ? const Icon(
                      Icons.check_circle,
                    ) : const SizedBox(),
                ),
              ],
            ),
            const SizedBox(height: 12),
            RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                      text: name,
                      style: Theme.of(context).primaryTextTheme.caption,
                )
            )
          ],
        )
    );
  }
}