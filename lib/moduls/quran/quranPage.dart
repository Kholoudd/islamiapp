import 'package:flutter/material.dart';

class QuranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset("assets/images/qur2an_screen_logo.png"),
        ),
        const Divider(
          thickness: 2,
          color: Color(0XFFB7935F),
          height: 5,
          indent: 5,
          endIndent: 5,
        ),
        Row(
          children: [
            const Expanded(
              child: Text(
                "رقم السوره",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
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
        ),
        const Divider(
          thickness: 2,
          color: Color(0XFFB7935F),
          height: 5,
          indent: 5,
          endIndent: 5,
        ),
        // Expanded(
        //     child: ListView.builder(itemBuilder: (context , index) =>
        //         ItemWidgits(),
        //       itemCount: 20,  )
        // ),
      ],
    );
  }
}
