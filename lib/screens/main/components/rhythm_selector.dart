import 'package:chords_jam/model/theory.dart';
import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'rhythm_button.dart';

class RhythmSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('RHYTHM', style: kSmallText),
        SizedBox(height: kDefaultPadding / 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: GridView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            children: Theory.rhythms
                .map((rhythm) => RhythmButton(rhythm, false))
                .toList(),
          ),
        ),
      ],
    );
  }
}
