import 'dart:ffi';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Dreamlist extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(label: Text('Путешествие',
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
                  TextButton(onPressed: () {},
                    child: Text('Путешествие',
                      style: TextStyle(
                        fontSize: 23,
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
              OutlinedButton.icon(label: Text('Успокаивающий звук природы',
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
                  TextButton(onPressed: () {},
                    child: Text('Успокаивающий звук природы',
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
                  OutlinedButton.icon(label: Text('Наедине',
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
                  TextButton(onPressed: () {},
                    child: Text('Наедине',
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
/*void getAudio() async{
    var url = "C:/Users/Isus/AndroidStudioProjects/untitled2/assets";
    if (playing){
      var res = await audioPlayer.pause();
      if (res == 1){
        setState((){
          playing = false;
        });
      }
    }else{
      var res = await audioPlayer.play(url,islocal: true);
      if (res ==1 ){
        setState((){
          playing = true;
        });
      }
    }
  }
}*/
