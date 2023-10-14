import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:islami/moduls/setting/widget/SettingItems.dart';
import 'package:islami/moduls/setting/widget/languageThem.dart';
import 'package:islami/moduls/setting/widget/themeMode.dart';
import 'package:provider/provider.dart';
import '../../core/provider/applicationProvider.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    var mainProvider = Provider.of<AppPovider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingItems(
            titel: local.language,
            selectedOne:
                mainProvider.currentLocal == "en" ? "English" : " عربي",
            onOptionTap: () {
              showLanguageBottonSheet(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          SettingItems(
            titel: local.themeMode,
            selectedOne: mainProvider.isDark() ? "Dark" : "Light",
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
