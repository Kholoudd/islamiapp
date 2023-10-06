import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  @override
  final String suraName;
  final String suraNumber;

  const ItemWidgets(
      {super.key, required this.suraName, required this.suraNumber});

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 45,
          width: 2.2,
          color: theme.dividerColor,
        ),
        Expanded(
          child: Text(
            suraName,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
