import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano/piano.dart';
import 'package:flutter_midi/flutter_midi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Piano App',
        home: Center(
          child: InteractivePiano(
            naturalColor: Colors.white,
            accidentalColor: Colors.red,
            keyWidth: 70,
            noteRange: NoteRange.forClefs([
              Clef.Treble,
              Clef.Bass,
              Clef.Alto,
            ]),
            onNotePositionTapped: (position) {
              
            },
          ),
        ));
  }
}