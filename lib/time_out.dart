import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Time_out extends StatelessWidget {
  const Time_out({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Перерыв между работой'),
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
                OutlinedButton.icon(label: Text('Перерыв между работой 1',
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
                OutlinedButton.icon(label: Text('Перерыв между работой 2',
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
                    OutlinedButton.icon(label: Text('Перерыв между работой 3',
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
