import 'package:flutter/material.dart';

class ItemWidgits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            "رقم السوره",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 45,
          width: 2.2,
          color: const Color(0XFFB7935F),
        ),
        const Expanded(
          child: Text(
            "إسم السوره",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
