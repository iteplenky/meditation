import 'package:flutter/material.dart';
import 'package:untitled2/pages/main_windowsw.dart';
import 'package:untitled2/pages/home.dart';
import 'package:untitled2/pages/snatie_stressa.dart';
import 'package:untitled2/pages/son.dart';
import 'package:untitled2/pages/time_out.dart';

void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (contex) => Mainwindows(),
    '/s': (context) => Athome(),
    '/son': (context) => Sonlist(),
    '/stres': (context) => Stress(),
    '/timeout': (context) => Time_out(),
  },
));

