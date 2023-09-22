import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedNavgatorIndex = 0;

  // List<Widget> screens=[
  //   QuranPage(),
  //   HadethPage(),
  //   SebhaPage(),
  //   RadioPage(),
  //   SettingPage(),
  // ];
  Widget build(BuildContext context) {
    final mediaquary = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
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
            ),
          ),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/qur2an_screen_logo.png"),
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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0XFFB7935F),
          selectedIconTheme: const IconThemeData(color: Colors.black, size: 35),
          selectedItemColor: Colors.black,
          unselectedIconTheme:
              const IconThemeData(color: Colors.white, size: 30),
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              selectedNavgatorIndex = index;
            });
          },
          currentIndex: selectedNavgatorIndex,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_quran.png",
                ),
              ),
              label: "quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_hadeth.png",
                ),
              ),
              label: "hedeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_sebha.png",
                ),
              ),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/icon_radio.png",
                ),
              ),
              label: "radio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}
