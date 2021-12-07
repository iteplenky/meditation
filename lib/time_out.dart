import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Time_out extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(label: Text('Воспоминания',
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.pause, size: 60, ),
                    TextButton(onPressed: () {
                      advancedPlayer.pause();
                    },
                      child: Text('Воспоминания',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(label: Text('Послушай',
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.pause, size: 60, ),
                    TextButton(onPressed: () {
                      advancedPlayer.pause();
                    },
                      child: Text('Послушай',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    OutlinedButton.icon(label: Text('Любимое время года',
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
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.pause, size: 60, ),
                    TextButton(onPressed: () {
                      advancedPlayer.pause();
                    },
                      child: Text('Любимое время года',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
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
