import 'package:chords_jam/model/theory.dart';
import 'package:flutter/cupertino.dart';

class Jam extends ChangeNotifier {
  int _tempo = 120;
  get tempo => _tempo;

  int _rhythm = 1;
  get rhythm => _rhythm;

  bool _isPlaying = false;
  get isPlaying => _isPlaying;

  // List<String> progression = [
  //   Theory.notes[_notes[0]] + Theory.chordTypes[_chordTypes[0]],
  //   Theory.notes[_notes[1]] + Theory.chordTypes[_chordTypes[1]],
  //   Theory.notes[_notes[2]] + Theory.chordTypes[_chordTypes[2]],
  //   Theory.notes[_notes[3]] + Theory.chordTypes[_chordTypes[3]],
  // ];

  List<int> _notes = [3, 10, 0, 8];

  get myNotes => _notes;

  List<int> _chordTypes = [0, 0, 1, 0];

  get note1 => _notes[0];
  get note2 => _notes[1];
  get note3 => _notes[2];
  get note4 => _notes[3];

  get chord1 => _chordTypes[0];
  get chord2 => _chordTypes[1];
  get chord3 => _chordTypes[2];
  get chord4 => _chordTypes[3];

  void setNote(int tileNo, int index) {
    _notes[tileNo] = index;
    notifyListeners();
  }

  void setChordType(int tileNo, int index) {
    _chordTypes[tileNo] = index;
    notifyListeners();
  }

  void setTempo(int tempo) {
    _tempo = tempo;
    notifyListeners();
  }

  void setRhythm(int rhythmIndex) {
    _rhythm = rhythmIndex;
    notifyListeners();
  }

//TODO transpose Function
  // int transposeUp() {
  //   for (int i = 0; i < 4; i++) {
  //     int current = _notes[i];
  //     current++;
  //     if (current > 11) {
  //       _notes[i] = 0;
  //       notifyListeners();
  //     } else {
  //       _notes[i] = current;
  //       notifyListeners();
  //     }
  //   }
  //   print('Transpose Up');
  //   return 1;
  // }
  //
  // void transposeDown() {
  //   for (int i = 0; i < 4; i++) {
  //     int current = _notes[i];
  //     current--;
  //     if (current < 0) {
  //       _notes[i] = 11;
  //       notifyListeners();
  //     } else {
  //       _notes[i] = current;
  //       notifyListeners();
  //     }
  //   }
  //   print('Transpose Down');
  // }
}
