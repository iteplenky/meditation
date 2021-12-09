

import 'package:flutter/material.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/pages/home.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:untitled2/pages/main_windowsw.dart';

import 'main_windowsw.dart';

class Athome extends StatefulWidget {
  const Athome({Key? key}) : super(key: key);

  @override
  State<Athome> createState() => _athomeState();
}
class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class _athomeState extends State<Athome> {

  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,

      home: Scaffold(
        appBar: AppBar(
        title: Text('Звуки'),
          backgroundColor: Colors.white24,
        ),
      body: SafeArea(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
            children:[
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
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.pause, size: 60, ),
                  TextButton(onPressed: () {
                    advancedPlayer.pause();
                  },
                    child: Text('Звуки дождя',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              ]
            ),
            Column(
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.pause, size: 60, ),
                    TextButton(onPressed: () {
                      advancedPlayer.pause();
                    },
                      child: Text('Звуки костра',
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
                        icon: Icon(Icons.play_arrow, size: 60, color: Colors.black,)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.pause, size: 60, ),
                        TextButton(onPressed: () {
                          advancedPlayer.pause();
                        },
                          child: Text('Шум гор',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Switch(value: _light, onChanged: (state){
                      setState((){
                        _light = state;
                      });
                    }),
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
                      Navigator.push(context, SlideRightRoute(page: Mainwindows()));
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
      ),
    );
  }
}
bool _light = true;

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.grey,
    brightness: Brightness.light,
    primaryColor: Colors.blue
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber
  )
);


