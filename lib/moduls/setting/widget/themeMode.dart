import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/setting/widget/selectedModeOption.dart';
import 'package:islami/moduls/setting/widget/unselectedModeOption.dart';

class ThemeAppOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFB7935F).withOpacity(0.6),
      ),
      child: Column(
        children: [
          SelectedModeOption(selectedThemeMode: "Light"),
          UnselectedModeOption(unselectedModeOption: "Dark"),
        ],
      ),
    );
  }
}
