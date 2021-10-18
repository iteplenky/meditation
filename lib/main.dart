import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Медитация'),
            centerTitle: true,
        ),
        body: Container(
            //margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 250.0),
            margin: EdgeInsets.fromLTRB(30.0, 540.0, 10.0, 20.0),
          child:
          RaisedButton.icon(onPressed: () {},
              icon: Icon(Icons.water_damage, size: 50,),
              label: Text('Главная')
          )
          //Icon(Icons.water_damage)
          /*Text('Текст имеет смысловую нагрузку', style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontFamily: 'Times New Roman',
            ),),*/
          ),

        ),
      );

  }
}