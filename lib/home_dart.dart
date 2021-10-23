import 'package:flutter/material.dart';
import 'package:untitled2/pages/home.dart';

class athome extends StatefulWidget {
  const athome({Key? key}) : super(key: key);

  @override
  State<athome> createState() => _athomeState();
}

class _athomeState extends State<athome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Звуки'),
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
                TextButton(onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route)=>false);
                },
                  child: Text('Главная', style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.music_note_outlined, size: 60,),
                TextButton(onPressed: () {
                },
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
