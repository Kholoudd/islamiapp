import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  @override
  final String suraName;
  final String suraNumber;

  const ItemWidgets(
      {super.key, required this.suraName, required this.suraNumber});

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 45,
          width: 2.2,
          color: const Color(0XFFB7935F),
        ),
        Expanded(
          child: Text(
            suraName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
