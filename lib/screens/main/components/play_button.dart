import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'package:chords_jam/logic/jam.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/model/theory.dart';

class PlayButton extends StatefulWidget {
  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlaying = !isPlaying;
        });
        //Todo Playing Function
        // print('Current Tempo: ${context.read<Jam>().tempo.toString()}');
        // print('Current Rhythm: ${Theory.rhythms[context.read<Jam>().rhythm]}');
        //print('Progression: ${context.read<Jam>().progression}');
        print(
            'Note 1 :${Theory.notes[context.read<Jam>().note1]}${Theory.chordTypes[context.read<Jam>().chord1]}');
      },
      child: Container(
        alignment: Alignment.center,
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
            boxShadow: [kDefaultShadow]),
        child: Icon(
          isPlaying ? Icons.stop : Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
