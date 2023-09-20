import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquary = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
              child: Text(
            "إسلامي",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0XFFB7935F),
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_radio.png",
                ),
                color: Colors.white,
                size: 50,
              ),
              label: "radio",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_sebha.png",
                ),
                color: Colors.white,
                size: 50,
              ),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_hadeth.png",
                ),
                color: Colors.white,
                size: 50,
              ),
              label: "hedeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_quran.png",
                ),
                size: 50,
              ),
              label: "quran",
            ),
          ],
        ),
        body: Column(
          children: [
            Image.asset("assets/images/qur2an_screen_logo.png"),
            Divider(
              thickness: 2,
              color: Color(0XFFB7935F),
              height: 5,
              indent: 5,
              endIndent: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "رقم السوره",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 2.2,
                  color: Color(0XFFB7935F),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "إسم السوره",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Color(0XFFB7935F),
              height: 5,
              indent: 5,
              endIndent: 5,
            ),
          ],
        ),
      ),
    );
  }
}
