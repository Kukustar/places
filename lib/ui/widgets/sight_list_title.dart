import 'package:flutter/material.dart';

class SightListTitle extends StatelessWidget {
   const SightListTitle({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}