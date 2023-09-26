import 'package:flutter/material.dart';

class SebhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 350,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/head_sebha_logo.png",
                width: mediaQuary.width,
                height: mediaQuary.height / 5,
              ),
              Positioned(
                top: 110,
                child: Image.asset(
                  "assets/images/body_sebha_logo.png",
                  height: mediaQuary.height / 4,
                  width: mediaQuary.width,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "عدد التسبيحات",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0XFFDAC0A3),
            borderRadius:
                BorderRadius.circular(10.0), // Set the desired border radius
          ),
          child: Text(
            "30",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0XFFB7935F),
            borderRadius:
                BorderRadius.circular(10.0), // Set the desired border radius
          ),
          child: Text(
            "الحمد لله",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        )
      ],
    );
  }
}
