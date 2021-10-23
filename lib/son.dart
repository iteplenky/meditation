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
    body:
        Column(
          children: [
            Text('Список звуков сна'),
          ],
        ),
    );
  }
}
