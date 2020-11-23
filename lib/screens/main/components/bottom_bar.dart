import 'package:flutter/material.dart';
import 'side_icon.dart';
import 'play_button.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SideIcon(Icons.repeat_rounded, true),
        PlayButton(),
        SideIcon(Icons.alarm_on_rounded, false),
      ],
    );
  }
}
