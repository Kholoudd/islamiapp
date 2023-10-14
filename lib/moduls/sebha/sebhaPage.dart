import 'package:flutter/material.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';
import '../../core/theme/applicationTheme.dart';

class SebhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var mainProvider = Provider.of<AppPovider>(context);
    return Column(
      children: [
        Container(
          height: 350,
          child: Stack(
            children: [
              Image.asset(
                mainProvider.sebha(),
                width: mediaQuary.width,
                height: mediaQuary.height / 5,
              ),
              Positioned(
                top: 110,
                child: Image.asset(
                  mainProvider.sebhaBody(),
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
          style: ApplicationTheme.isDark
              ? theme.textTheme.bodyMedium
              : theme.textTheme.bodyMedium,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ApplicationTheme.isDark
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.primary,
            borderRadius:
                BorderRadius.circular(10.0), // Set the desired border radius
          ),
          child: Text(
            "30",
            style: ApplicationTheme.isDark
                ? theme.textTheme.bodyMedium
                : theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: mainProvider.isDark()
                ? theme.colorScheme.onSecondary
                : theme.colorScheme.primary,
            borderRadius:
                BorderRadius.circular(10.0), // Set the desired border radius
          ),
          child: Text(
            "الحمد لله",
            style: ApplicationTheme.isDark
                ? theme.textTheme.bodyMedium
                : theme.textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
