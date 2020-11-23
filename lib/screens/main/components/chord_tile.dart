import 'package:chords_jam/constants.dart';
import 'package:chords_jam/model/theory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChordTile extends StatelessWidget {
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
            onSelectedItemChanged: (val) {},
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
            onSelectedItemChanged: (val) {},
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
}
