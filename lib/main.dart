import 'package:flutter/material.dart';
import 'package:sepatu/splash.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEPATU.BDL',
      theme: new ThemeData(),


      home: new LauncherPage(),
    );
  }
}