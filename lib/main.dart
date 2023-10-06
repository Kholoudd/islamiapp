import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/HomePage.dart';
import 'package:islami/SplashPage.dart';
import 'package:islami/core/applicationTheme.dart';
import 'package:islami/moduls/hadeth/hadethDetails.dart';
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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
      home: SplashPage(),
    );
  }
}
