import 'package:flutter/material.dart';
import 'package:lab11/pages/home.dart';

import 'package:lab11/pages/choose_location.dart';
import 'package:lab11/pages/loading.dart';
// void main(){
// runApp(MaterialApp(
// home: ChooseLocation(),
// ));
// }
void main()=>runApp(MaterialApp(
//initialRoute: '/home',
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));