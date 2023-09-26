import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
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
                color: Color(0XFFB7935F),
              ),
              Icon(CupertinoIcons.play_arrow_solid,
                  size: 45, color: Color(0XFFB7935F)),
              Icon(CupertinoIcons.forward_end_fill,
                  size: 35, color: Color(0XFFB7935F)),
            ],
          ),
        )
      ],
    );
  }
}
