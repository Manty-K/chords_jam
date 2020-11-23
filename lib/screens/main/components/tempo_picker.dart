import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';

class TempoPicker extends StatefulWidget {
  @override
  _TempoPickerState createState() => _TempoPickerState();
}

class _TempoPickerState extends State<TempoPicker> {
  List<int> tempoList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 60; i < 300; i++) {
      tempoList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'TEMPO',
          style: kSmallText,
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Container(
          height: 50,
          child: CupertinoPicker(
              looping: true,
              itemExtent: 80,
              onSelectedItemChanged: null,
              children: tempoList
                  .map((tempo) => Center(
                          child: Text(
                        tempo.toString(),
                        style: kLargeText,
                      )))
                  .toList()),
        )
      ],
    );
  }
}
