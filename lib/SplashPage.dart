import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/HomePage.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = "splash_Screen";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<AppPovider>(context);

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
