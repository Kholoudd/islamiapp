import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethPage extends StatefulWidget {
  @override
  State<HadethPage> createState() => _HadethPageState();
}

class _HadethPageState extends State<HadethPage> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) {
      readHadeth();
    }
    ;
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        const Divider(
          height: 5,
          color: Color(0XFFB7935F),
          thickness: 3,
        ),
        const Text(
          "الأحاديث",
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        const Divider(
          height: 5,
          color: Color(0XFFB7935F),
          thickness: 3,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => Text(
            allHadethContent[index].hadethTitel,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          itemCount: allHadethContent.length,
        ))
      ],
    );
  }

  readHadeth() async {
    String hadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = hadeth.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String textHadeth = allHadeth[i].trim();
      int indexOfFirstLine = textHadeth.indexOf("/n");
      String Title = textHadeth.substring(0, indexOfFirstLine);
      String content = textHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(hadethTitel: Title, hadethContent: content);
      allHadethContent.add(hadethContent);
      setState(() {});
    }
  }
}

class HadethContent {
  final String hadethTitel;

  final String hadethContent;

  HadethContent({required this.hadethTitel, required this.hadethContent});
}
