import 'package:flutter/material.dart';
import 'package:islami/moduls/quran/quranDetails.dart';
import 'package:islami/moduls/quran/widegt/items.dart';

class QuranPage extends StatelessWidget {
  @override
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/qur2an_screen_logo.png"),
        Divider(
          thickness: 2,
          // color: theme.primaryColor,
          height: 5,
          indent: 5,
          endIndent: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "رقم السوره",
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 45,
              width: 2.2,
              color: theme.dividerColor,
            ),
            Expanded(
              child: Text(
                "إسم السوره",
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          // color: theme.primaryColor,
          height: 5,
          indent: 5,
          endIndent: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetails.routeName,
                    arguments: SuraDetails(
                        suraName: suraNames[index],
                        suraNumber: "${index + 1}"));
              },
              child: ItemWidgets(
                suraName: suraNames[index],
                suraNumber: "${index + 1}",
              ),
            ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}

class SuraDetails {
  final String suraName;

  final String suraNumber;

  SuraDetails({required this.suraName, required this.suraNumber});
}
