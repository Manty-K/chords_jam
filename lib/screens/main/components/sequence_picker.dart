import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'chord_tile.dart';

class SequencePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Arrow(icon: Icons.keyboard_arrow_up),
        // Text('PROGRESSION', style: kSmallText),
        // SizedBox(height: kDefaultPadding / 2),
        SizedBox(height: kDefaultPadding / 2),
        SizedBox(height: kDefaultPadding / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChordTile(),
            ChordTile(),
            ChordTile(),
            ChordTile(),
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        Arrow(icon: Icons.keyboard_arrow_down),
      ],
    );
  }
}

class Arrow extends StatefulWidget {
  final IconData icon;
  Arrow({this.icon});

  @override
  _ArrowState createState() => _ArrowState();
}

class _ArrowState extends State<Arrow> {
  Color iconColor = Colors.white.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO Transpose
      },
      onTapDown: (_) {
        setState(() {
          iconColor = Colors.white;
        });
      },
      onTapUp: (_) {
        setState(() {
          iconColor = Colors.white.withOpacity(0.3);
        });
      },
      onTapCancel: () {
        setState(() {
          iconColor = Colors.white.withOpacity(0.3);
        });
      },
      child: Icon(
        widget.icon,
        color: iconColor,
        size: 30,
      ),
    );
  }
}
