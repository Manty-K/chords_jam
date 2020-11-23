import 'package:chords_jam/model/theory.dart';
import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'rhythm_button.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';

class RhythmSelector extends StatefulWidget {
  @override
  _RhythmSelectorState createState() => _RhythmSelectorState();
}

class _RhythmSelectorState extends State<RhythmSelector> {
  int activeButton;

  @override
  Widget build(BuildContext context) {
    activeButton = context.watch<Jam>().rhythm;
    return Column(
      children: [
        Text('RHYTHM', style: kSmallText),
        SizedBox(height: kDefaultPadding / 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: GridView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: Theory.rhythms.length,
            itemBuilder: (BuildContext context, int index) {
              return RhythmButton(index, Theory.rhythms[index],
                  index == activeButton ? true : false);
            },
          ),
        ),
      ],
    );
  }
}
