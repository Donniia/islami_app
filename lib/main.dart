import 'package:flutter/material.dart';
import 'package:islami/core/provider/app_provider.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/modules/hadeth/hadeth_details.dart';
import 'package:islami/modules/quran/quran_details.dart';
import 'package:islami/modules/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      theme: AppTheme.lighttheme,
      darkTheme: AppTheme.darktheme,
      themeMode: appProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLanguage),
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (context) => splashScreen(),
        Home.routeName: (context) => Home(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
