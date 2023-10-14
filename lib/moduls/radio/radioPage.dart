import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';
import '../../core/theme/applicationTheme.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Image.asset("assets/images/radio_image.png"),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "إذاعه القرآن الكريم",
            style: mainProvider.isDark()
                ? theme.textTheme.bodyMedium
                : theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.forward_end_fill,
                size: 35,
                color: mainProvider.isDark()
                    ? theme.colorScheme.onSecondary
                    : theme.colorScheme.primary,
              ),
              Icon(CupertinoIcons.play_arrow_solid,
                  size: 45,
                  color: mainProvider.isDark()
                      ? theme.colorScheme.onSecondary
                      : theme.colorScheme.primary),
              Icon(CupertinoIcons.forward_end_fill,
                  size: 35,
                  color: mainProvider.isDark()
                      ? theme.colorScheme.onSecondary
                      : theme.colorScheme.primary),
            ],
          ),
        )
      ],
    );
  }
}
