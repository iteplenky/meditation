import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class sonlist extends StatelessWidget {
  const sonlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Сон'),
    backgroundColor: Colors.white24,
    ),
    body:SafeArea(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(label: Text('Сон 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
                onPressed: () {
                  final play=AudioCache();
                  play.play('locomotive_steam_train_whistle.mp3');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white38),
                ),
                icon: Icon(Icons.play_arrow, size: 60, color: Colors.black,),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(label: Text('Сон 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
                onPressed: () {
                  final play=AudioCache();
                  play.play('locomotive_steam_train_whistle.mp3');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white38),
                ),
                icon: Icon(Icons.play_arrow, size: 60, color: Colors.black,),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  OutlinedButton.icon(label: Text('Сон 3',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                    onPressed: () {
                      final play=AudioCache();
                      play.play('locomotive_steam_train_whistle.mp3');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white38),
                    ),
                    icon: Icon(Icons.play_arrow, size: 60, color: Colors.black,),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
