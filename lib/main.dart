import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Main(),
));
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная'),
        backgroundColor: Colors.white24,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.water_damage, size: 60, ),
                TextButton(onPressed: () {},
                  child: Text('Главная', style: TextStyle(
                    fontSize: 26,
                    color: Colors.black54,
                  ),),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.music_note_outlined, size: 60,),
                TextButton(onPressed: () {},
                  child: Text('Звуки', style: TextStyle(
                    fontSize: 26,
                    color: Colors.black54,
                  ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
