import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/moduls/setting/widget/SettingItems.dart';
import 'package:islami/moduls/setting/widget/languageThem.dart';
import 'package:islami/moduls/setting/widget/themeMode.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingItems(
            titel: "Language",
            selectedOne: "English",
            onOptionTap: () {
              showLanguageBottonSheet(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          SettingItems(
            titel: "Theme Mode ",
            selectedOne: "Dark",
            onOptionTap: () {
              showThemeBottonSheet(context);
            },
          ),
        ],
      ),
    );
  }
}

void showLanguageBottonSheet(context) {
  showModalBottomSheet(context: context, builder: (context) => LanguageTheme());
}

void showThemeBottonSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => ThemeAppOptions());
}
