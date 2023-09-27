import 'package:flutter/material.dart';

class UnselectedLanguage extends StatelessWidget {
  final String unselectedOptionLanguage;

  const UnselectedLanguage({super.key, required this.unselectedOptionLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.2, color: Colors.black38)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            unselectedOptionLanguage,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
