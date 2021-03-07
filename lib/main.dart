import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
// It is the same as
// void main(){return runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {
  void playSound(int inputNumber) {
    final player = AudioCache();
    player.play("note$inputNumber.wav");
  }

  Expanded buildKey({int inputNumber, Color color}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(inputNumber);
        },
        color: color,
        enableFeedback: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, inputNumber: 1),
              buildKey(color: Colors.orange, inputNumber: 2),
              buildKey(color: Colors.yellow, inputNumber: 3),
              buildKey(color: Colors.green, inputNumber: 4),
              buildKey(color: Colors.teal, inputNumber: 5),
              buildKey(color: Colors.blue, inputNumber: 6),
              buildKey(color: Colors.purple, inputNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
