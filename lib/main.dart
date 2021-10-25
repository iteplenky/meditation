import 'package:flutter/material.dart';
import 'package:untitled2/pages/main_windowsw.dart';
import 'package:untitled2/pages/home.dart';
import 'package:untitled2/pages/snatie_stressa.dart';
import 'package:untitled2/pages/son.dart';
import 'package:untitled2/pages/time_out.dart';

void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (contex) => mainwindows(),
    '/s': (context) => athome(),
    '/son': (context) => sonlist(),
    '/stres': (context) => stress(),
    '/timeout': (context) => time_out(),
  },
));

