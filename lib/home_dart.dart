import 'package:flutter/material.dart';
import 'package:untitled2/pages/home.dart';
import 'package:audioplayers/audioplayers.dart';

class Athome extends StatefulWidget {
  const Athome({Key? key}) : super(key: key);

  @override
  State<Athome> createState() => _athomeState();
}

class _athomeState extends State<Athome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Звуки'),
        backgroundColor: Colors.white24,
      ),
      body: SafeArea(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(label: Text('Звуки дождя',
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
                OutlinedButton.icon(label: Text('Звуки костра',
                  style: TextStyle(fontSize: 20, color: Colors.black,),
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
                    OutlinedButton.icon(label: Text('Шум гор',
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
                        icon: Icon(Icons.play_arrow, size: 60, color: Colors.black,))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Совет 2: Закройте глаза, наслаждайтесь',  textAlign: TextAlign.left,
                        style: TextStyle( fontSize: 20,                      //размер шрифта
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.water_damage, size: 60, ),
                    TextButton(onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route)=>false);
                    },
                      child: Text('Главная',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.music_note_outlined, size: 60,),
                    TextButton(onPressed: () {},
                      child: Text('Звуки',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black54,
                        ),
                      ),
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


