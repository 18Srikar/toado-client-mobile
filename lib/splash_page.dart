import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toado/home_page.dart';

class SplashFlash extends StatefulWidget {
  const SplashFlash({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _SplashFlashState createState() => _SplashFlashState();
}

class _SplashFlashState extends State<SplashFlash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: widget.title),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Toado",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
