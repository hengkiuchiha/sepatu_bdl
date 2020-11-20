import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sepatu/dashboard.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new Dashboard();
      }));
    });
  }


  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(

        child: new Image.asset(
          "assets/sepatubdl.jpg",
          height: 150.0,
          width: 150.0,
        ),

      ),
    );
  }
}