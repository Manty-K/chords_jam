import 'package:chords_jam/constants.dart';
import 'package:flutter/material.dart';
import 'components/tempo_picker.dart';
import 'components/sequence_picker.dart';
import 'components/rhythm_selector.dart';
import 'components/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: kBackGroundGradient,
        ),
        SafeArea(
          child: Column(
            children: [
              Spacer(),
              Text('ChordsJam', style: kMediumText),
              Spacer(),
              TempoPicker(),
              Spacer(),
              SequencePicker(),
              Spacer(),
              RhythmSelector(),
              Spacer(),
              BottomBar(),
              Spacer(),
            ],
          ),
        ),
      ]),
    );
  }
}
