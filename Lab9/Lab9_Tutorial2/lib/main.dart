import 'package:flutter/material.dart';
import 'package:lab9_tutorial2/pages/home.dart';
import 'package:lab9_tutorial2/pages/choose_location.dart';
import 'package:lab9_tutorial2/pages/loading.dart';
// void main(){
//   runApp(MaterialApp(
//     home: ChooseLocation(),
//   ));
// }
void main()=>runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },

));
