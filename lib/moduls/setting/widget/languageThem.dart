import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:islami/moduls/setting/widget/selectedLanguage.dart';
import 'package:islami/moduls/setting/widget/unselectedLanguage.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/applicationTheme.dart';

class LanguageTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: mainProvider.isDark()
            ? theme.floatingActionButtonTheme.backgroundColor
            : theme.floatingActionButtonTheme.backgroundColor,
      ),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                mainProvider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: mainProvider.currentLocal == "en"
                  ? SelectedLanguage(selectedOptionOfLanguage: "English")
                  : UnselectedLanguage(unselectedOptionLanguage: "English")),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                mainProvider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: mainProvider.currentLocal == "en"
                  ? UnselectedLanguage(unselectedOptionLanguage: "عربي")
                  : SelectedLanguage(selectedOptionOfLanguage: "عربي")),
        ],
      ),
    );
  }
}
