import 'package:flutter/material.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/applicationTheme.dart';

typedef selectesOption = void Function();

class SettingItems extends StatelessWidget {
  final String titel;

  final String selectedOne;

  final selectesOption onOptionTap;

  const SettingItems(
      {super.key,
      required this.titel,
      required this.selectedOne,
      required this.onOptionTap});

  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titel,
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.start,
        ),
        GestureDetector(
          onTap: onOptionTap,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: EdgeInsets.all(10),
            height: 50,
            width: mediaQuary.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: mainProvider.isDark()
                      ? theme.colorScheme.onSecondary
                      : theme.colorScheme.primary,
                  width: 1.2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedOne,
                  style: mainProvider.isDark()
                      ? theme.textTheme.bodyMedium
                      : theme.textTheme.bodyMedium,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 40,
                  color: mainProvider.isDark()
                      ? Colors.white
                      : theme.colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
