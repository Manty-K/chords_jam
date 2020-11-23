import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'chord_tile.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';
import 'arrow.dart';

class SequencePicker extends StatefulWidget {
  @override
  _SequencePickerState createState() => _SequencePickerState();
}

class _SequencePickerState extends State<SequencePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Arrow(
          icon: Icons.keyboard_arrow_up,
          transpose: () => () {}, /*context.read<Jam>().transposeUp(),*/
        ),
        // Text('PROGRESSION', style: kSmallText),
        // SizedBox(height: kDefaultPadding / 2),
        SizedBox(height: kDefaultPadding / 2),
        SizedBox(height: kDefaultPadding / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChordTile(
                0, context.watch<Jam>().note1, context.watch<Jam>().chord1),
            ChordTile(
                1, context.watch<Jam>().note2, context.watch<Jam>().chord2),
            ChordTile(
                2, context.watch<Jam>().note3, context.watch<Jam>().chord3),
            ChordTile(
                3, context.watch<Jam>().note4, context.watch<Jam>().chord4),
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        Arrow(
          icon: Icons.keyboard_arrow_down,
          transpose: () => () {}, /*context.read<Jam>().transposeDown(),*/
        ),
      ],
    );
  }
}
