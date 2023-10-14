import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:islami/moduls/hadeth/hadethPage.dart';
import 'package:islami/moduls/quran/quranPage.dart';
import 'package:islami/moduls/radio/radioPage.dart';
import 'package:islami/moduls/sebha/sebhaPage.dart';
import 'package:islami/moduls/setting/settingPage.dart';
import 'package:provider/provider.dart';
import 'core/theme/applicationTheme.dart';

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
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var mainProvider = Provider.of<AppPovider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          mainProvider.background(),
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              local.islami,
            ),
          ),
        ),
        body: screens[selectedNavgatorIndex],
        bottomNavigationBar: BottomNavigationBar(
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
              label: local.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_hadeth.png",
                ),
              ),
              label: local.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_sebha.png",
                ),
              ),
              label: local.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_radio.png",
                ),
              ),
              label: local.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: local.settinds,
            ),
          ],
        ),
      ),
    );
  }
}
