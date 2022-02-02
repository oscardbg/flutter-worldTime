import 'package:flutter/material.dart';
import 'package:nninja_tut01/pages/chooseLocation.dart';
import 'package:nninja_tut01/pages/loading.dart';
import './pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  },
));

