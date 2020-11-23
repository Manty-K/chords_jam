import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chords_jam/constants.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';

class TempoPicker extends StatefulWidget {
  @override
  _TempoPickerState createState() => _TempoPickerState();
}

class _TempoPickerState extends State<TempoPicker> {
  List<int> tempoList = [];

  @override
  void initState() {
    super.initState();
    for (int i = kMInTempo; i < kMaxTempo; i++) {
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
              scrollController: FixedExtentScrollController(
                  initialItem: context.watch<Jam>().tempo - kMInTempo),
              looping: true,
              itemExtent: 80,
              onSelectedItemChanged: (val) {
                int currentTempo = val + kMInTempo;
                context.read<Jam>().setTempo(currentTempo);
              },
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
