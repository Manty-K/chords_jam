import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';

class RhythmButton extends StatelessWidget {
  final String buttonText;
  final int id;
  bool isActive;
  RhythmButton(this.id, this.buttonText, this.isActive);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: isActive ? Colors.white.withOpacity(0.3) : Colors.transparent,
      //disabledBorderColor: Colors.red,
      focusColor: Colors.red,
      // borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
      onPressed: () {
        context.read<Jam>().setRhythm(id);
      },
      child: Text(
        buttonText,
        style: kMediumText,
      ),
    );
  }
}
