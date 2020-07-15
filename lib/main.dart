import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded createKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(number);
        },
        color: color,
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                createKey(color: Colors.red, number: 1),
                createKey(color: Colors.deepOrange, number: 2),
                createKey(color: Colors.yellow, number: 3),
                createKey(color: Colors.green, number: 4),
                createKey(color: Colors.teal, number: 5),
                createKey(color: Colors.blue, number: 6),
                createKey(color: Colors.purple, number: 7),
                Center(
                  child: Text('Made by Uditha',
                  style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
