import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:islami/moduls/hadeth/hadethDetails.dart';
import 'package:provider/provider.dart';

import 'hadethContent.dart';

class HadethPage extends StatefulWidget {
  @override
  State<HadethPage> createState() => _HadethPageState();
}

class _HadethPageState extends State<HadethPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);

    if (ahadeth.isEmpty) readHadeth();
    return Column(children: [
      Image.asset("assets/images/hadeth_logo.png"),
      Divider(
        height: 5,
        color: mainProvider.isDark() ? theme.dividerColor : theme.dividerColor,
        thickness: 3,
      ),
      Text(
        "الأحاديث",
        style: theme.textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
      Divider(
        height: 5,
        color: mainProvider.isDark() ? theme.dividerColor : theme.dividerColor,
        thickness: 3,
      ),
      Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HadethDetails.routeName,
                  arguments: ahadeth[index]);
            },
            child: Text(
              ahadeth[index].hadethTitel,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            height: 10,
            endIndent: 60,
            indent: 60,
            thickness: 1,
          ),
          itemCount: ahadeth.length,
        ),
      )
    ]);
  }

  List<HadethContent> ahadeth = [];

  readHadeth() async {
    String hadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = hadeth.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singelHadeth = allHadeth[i].trim();
      // List<String> hadethTitle = singelHadeth.trim().split("/n");
      // String title = hadethTitle[0];
      // hadethTitle.remove(0);
      // String content = hadethTitle.join("/n");
      int indexOfFirstLine = singelHadeth.indexOf("\n");
      String title = singelHadeth.substring(0, indexOfFirstLine);
      String content = singelHadeth.substring(indexOfFirstLine + 1);
      // print(title);
      print(content);
      HadethContent hadethContent =
          HadethContent(hadethTitel: title, hadethContent: content);
      ahadeth.add(hadethContent);
      setState(() {});
    }
  }
}
