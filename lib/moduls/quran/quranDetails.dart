import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:islami/moduls/quran/quranPage.dart';
import 'package:provider/provider.dart';

import '../../core/theme/applicationTheme.dart';

class QuranDetails extends StatefulWidget {
  @override
  static String routeName = "quranDetails";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  String suraContent = "";
  List<String> allSura = [];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (suraContent.isEmpty) {
      readFile(args.suraNumber);
    }
    var mediaQuary = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          mainProvider.background(),
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mainProvider.isDark() ? Colors.white : Colors.black,
            size: 30,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              local.islami,
            ),
          ),
        ),
        body: Container(
          height: 652,
          width: 354,
          margin: EdgeInsets.only(top: 60, left: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainProvider.isDark()
                ? theme.colorScheme.onPrimary
                : Colors.white,
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
                      color: ApplicationTheme.isDark
                          ? theme.colorScheme.onSecondary
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(
                color: ApplicationTheme.isDark
                    ? theme.dividerColor
                    : theme.dividerColor,
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
