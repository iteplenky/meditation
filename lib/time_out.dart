import 'package:flutter/material.dart';

class time_out extends StatelessWidget {
  const time_out({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Перерыв между работой'),
        backgroundColor: Colors.white24,
      ),
      body:
      Column(
        children: [
          Text('Список звуков для перерыва'),
        ],
      ),
    );
  }
}
