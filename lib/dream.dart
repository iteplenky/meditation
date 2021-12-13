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
    final urlImage ='https://wallpaperaccess.com/full/4609573.jpg';
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Сон'),
    backgroundColor: Colors.white24,
    ),
    body:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
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
                  backgroundColor: MaterialStateProperty.all(Colors.white60),
                ),
                icon: Icon(Icons.play_arrow, size: 60, color: Colors.white38,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.pause, size: 60, color: Colors.white60,),
                  TextButton(onPressed: () {
                    advancedPlayer.pause();
                  },
                    child: Text('Путешествие',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white60,
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
                  backgroundColor: MaterialStateProperty.all(Colors.white60),
                ),
                icon: Icon(Icons.play_arrow, size: 60, color: Colors.white38,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.pause, size: 60, color: Colors.white60,),
                  TextButton(onPressed: () {
                    advancedPlayer.pause();
                  },
                    child: Text('Успокаивающий звук природы',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white60,
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
                      backgroundColor: MaterialStateProperty.all(Colors.white60),
                    ),
                    icon: Icon(Icons.play_arrow, size: 60, color: Colors.white38,),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.pause, size: 60, color: Colors.white60,),
                  TextButton(onPressed: () {
                    advancedPlayer.pause();
                  },
                    child: Text('Наедине',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white60,
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
