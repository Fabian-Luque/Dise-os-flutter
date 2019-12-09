
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
 
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    if (Platform.isAndroid) {
      // Aqui va el transparent 
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent
      ));

    } else if (Platform.isIOS) {
      // Aqui el white 
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      ));
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'botones'  : (BuildContext context) => BotonesPage(),
      },
    );
  }
}