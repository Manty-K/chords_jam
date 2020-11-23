import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';

class RhythmButton extends StatelessWidget {
  final String buttonText;
  bool isActive = false;
  RhythmButton(this.buttonText, this.isActive);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      highlightColor: Colors.white.withOpacity(0.3),
      highlightedBorderColor: Colors.white,
      borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
      onPressed: () {},
      child: Text(
        buttonText,
        style: kMediumText,
      ),
    );
  }
}
