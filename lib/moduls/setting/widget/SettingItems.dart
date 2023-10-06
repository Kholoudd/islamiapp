import 'package:flutter/material.dart';

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
                  color: theme.colorScheme.onPrimary,
                  width: 1.2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedOne,
                  style: theme.textTheme.bodyLarge,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 40,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
