import 'package:chords_jam/constants.dart';
import 'package:chords_jam/model/theory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';

class ChordTile extends StatelessWidget {
  final int id;
  final int currentNote;
  final int currentChord;
  ChordTile(this.id, this.currentNote, this.currentChord);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kInactiveTileColor,
              boxShadow: [kDefaultShadow],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: (MediaQuery.of(context).size.width / 4) - kDefaultPadding / 2,
          width: (MediaQuery.of(context).size.width / 4) - kDefaultPadding / 2,
          child: CupertinoPicker(
            scrollController:
                FixedExtentScrollController(initialItem: currentNote),
            onSelectedItemChanged: (val) {
              context.read<Jam>().setNote(id, val);
            },
            looping: true,
            itemExtent: 90,
            children: Theory.notes
                .map((note) => Center(
                      child: Text(
                        note,
                        style: kLargeText,
                      ),
                    ))
                .toList(),
          ),
        ),
        Container(
          height: 30,
          width: (MediaQuery.of(context).size.width / 4) - kDefaultPadding / 2,
          child: CupertinoPicker(
            scrollController:
                FixedExtentScrollController(initialItem: currentChord),
            onSelectedItemChanged: (val) {
              context.read<Jam>().setChordType(id, val);
            },
            looping: true,
            itemExtent: 50,
            children: Theory.chordTypes
                .map((note) => Center(
                      child: Text(
                        note,
                        style: kSmallText,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  //
  //
  // CupertinoPicker buildChordTypePicker(BuildContext context, int chord) {
  //   return CupertinoPicker(
  //     scrollController: FixedExtentScrollController(initialItem: chord),
  //     onSelectedItemChanged: (val) {
  //       context.read<Jam>().setChordType(id, val);
  //     },
  //     looping: true,
  //     itemExtent: 50,
  //     children: Theory.chordTypes
  //         .map((note) => Center(
  //               child: Text(
  //                 note,
  //                 style: kSmallText,
  //               ),
  //             ))
  //         .toList(),
  //   );
  // }
  //
  // CupertinoPicker buildNotePicker(BuildContext context, int note) {
  //   FixedExtentScrollController controller =
  //       FixedExtentScrollController(initialItem: note);
  //   return CupertinoPicker(
  //     scrollController: controller,
  //     onSelectedItemChanged: (val) {
  //       context.read<Jam>().setNote(id, val);
  //     },
  //     looping: true,
  //     itemExtent: 90,
  //     children: Theory.notes
  //         .map((note) => Center(
  //               child: Text(
  //                 note,
  //                 style: kLargeText,
  //               ),
  //             ))
  //         .toList(),
  //   );
  // }
}
