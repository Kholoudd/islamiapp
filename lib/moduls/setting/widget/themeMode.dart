import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/setting/widget/selectedModeOption.dart';
import 'package:islami/moduls/setting/widget/unselectedModeOption.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/applicationProvider.dart';
import '../../../core/theme/applicationTheme.dart';

class ThemeAppOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<AppPovider>(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: mainProvider.isDark()
              ? theme.floatingActionButtonTheme.backgroundColor
              : theme.floatingActionButtonTheme.backgroundColor),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                mainProvider.chanageTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: mainProvider.isDark()
                  ? SelectedModeOption(selectedThemeMode: "Dark")
                  : UnselectedModeOption(unselectedModeOption: "Dark")),
          GestureDetector(
              onTap: () {
                mainProvider.chanageTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: mainProvider.isDark()
                  ? UnselectedModeOption(unselectedModeOption: "Light")
                  : SelectedModeOption(selectedThemeMode: "Light")),
        ],
      ),
    );
  }
}
