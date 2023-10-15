import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/applicationProvider.dart';
import 'package:provider/provider.dart';

import 'hadethContent.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethdetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var mainProvider = Provider.of<AppPovider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(mainProvider.background()),
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
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: mainProvider.isDark()
                ? theme.colorScheme.onPrimary
                : Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.hadethTitel,
                style: theme.textTheme.bodyLarge!.copyWith(),
              ),
              Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      args.hadethContent,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onSecondary, height: 1.8),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
