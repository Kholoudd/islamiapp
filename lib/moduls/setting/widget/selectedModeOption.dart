import 'package:flutter/material.dart';

class SelectedModeOption extends StatelessWidget {
  final String selectedThemeMode;

  const SelectedModeOption({super.key, required this.selectedThemeMode});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.2, color: Colors.black38)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedThemeMode,
            style: theme.textTheme.bodyLarge,
          ),
          Icon(
            Icons.check_box,
            size: 25,
            color: theme.colorScheme.onSecondary,
          ),
        ],
      ),
    );
  }
}
