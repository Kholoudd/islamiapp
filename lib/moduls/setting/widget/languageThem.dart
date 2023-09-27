import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/setting/widget/selectedLanguage.dart';
import 'package:islami/moduls/setting/widget/unselectedLanguage.dart';

class LanguageTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: Color(0XFFB7935F).withOpacity(0.6),
      ),
      child: Column(
        children: [
          SelectedLanguage(
            selectedOptionOfLanguage: "English",
          ),
          SizedBox(
            height: 30,
          ),
          UnselectedLanguage(unselectedOptionLanguage: "عربي"),
        ],
      ),
    );
  }
}
