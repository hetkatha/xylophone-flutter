import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  addButton({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(sound);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              addButton(sound: 1, color: Colors.red),
              addButton(sound: 2, color: Colors.orange),
              addButton(sound: 3, color: Colors.yellow),
              addButton(sound: 4, color: Colors.green),
              addButton(sound: 5, color: Colors.teal),
              addButton(sound: 6, color: Colors.blue),
              addButton(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
