import 'package:chords_jam/constants.dart';
import 'package:flutter/material.dart';
import 'components/tempo_picker.dart';
import 'components/sequence_picker.dart';
import 'components/rhythm_selector.dart';

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

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SideIcon(Icons.repeat_rounded),
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
              boxShadow: [kDefaultShadow]),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        SideIcon(Icons.alarm_on_rounded),
      ],
    );
  }
}

class SideIcon extends StatelessWidget {
  final IconData icon;
  Color iconColor = Colors.white.withOpacity(0.3);

  SideIcon(this.icon);
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30,
      color: iconColor,
    );
  }
}
