import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/HomePage.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';
import 'core/theme/applicationTheme.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = "splash_Screen";

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<AppPovider>(context);
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    final mediaquary = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        mainProvider.splashBackground(),
        width: mediaquary.width,
        height: mediaquary.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
