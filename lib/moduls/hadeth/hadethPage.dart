import 'package:flutter/material.dart';

class HadethPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        const Divider(height: 5, color: Color(0XFFB7935F)),
        const Text(
          "الأحاديث",
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        const Divider(height: 5, color: Color(0XFFB7935F)),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => Text("kholoud"),
          itemCount: 5,
        ))
      ],
    );
  }
}
