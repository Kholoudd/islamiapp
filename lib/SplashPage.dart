import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/HomePage.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = "splash_Screen";

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    final mediaquary = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/images/splashPage.png",
        width: mediaquary.width,
        height: mediaquary.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
