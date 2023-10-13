import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/quran/quranPage.dart';

class QuranDetails extends StatefulWidget {
  @override
  static String routeName = "quranDetails";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String suraContent = "";
  List<String> allSura = [];
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (suraContent.isEmpty) {
      readFile(args.suraNumber);
    }
    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
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
        body: Container(
          height: 652,
          width: 354,
          margin: EdgeInsets.only(top: 60, left: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "سورة ${args.suraName}",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.play_circle_fill,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 3,
                indent: 25,
                endIndent: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    suraContent,
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: allSura.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFile(String index) async {
    String suraText = await rootBundle.loadString("assets/files/$index.txt");
    suraContent = suraText;
    setState(() {
      allSura = suraContent.split("/n");
    });
  }
}
