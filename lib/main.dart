import 'package:flutter/material.dart';
import 'package:islami/HomePage.dart';
import 'package:islami/SplashPage.dart';
import 'package:islami/moduls/quran/quranDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
      home: SplashPage(),
    );
  }
}
