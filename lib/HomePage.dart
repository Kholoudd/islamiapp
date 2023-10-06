import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/moduls/hadeth/hadethPage.dart';
import 'package:islami/moduls/quran/quranPage.dart';
import 'package:islami/moduls/radio/radioPage.dart';
import 'package:islami/moduls/sebha/sebhaPage.dart';
import 'package:islami/moduls/setting/settingPage.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedNavgatorIndex = 0;

  List<Widget> screens = [
    QuranPage(),
    HadethPage(),
    SebhaPage(),
    RadioPage(),
    SettingPage(),
  ];

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              AppLocalizations.of(context)!.islami,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: screens[selectedNavgatorIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0XFFB7935F),
          selectedIconTheme: const IconThemeData(color: Colors.black, size: 35),
          selectedItemColor: Colors.black,
          unselectedIconTheme:
              const IconThemeData(color: Colors.white, size: 30),
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              selectedNavgatorIndex = index;
            });
          },
          currentIndex: selectedNavgatorIndex,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_quran.png",
                ),
              ),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_hadeth.png",
                ),
              ),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_sebha.png",
                ),
              ),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_radio.png",
                ),
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settinds,
            ),
          ],
        ),
      ),
    );
  }
}
