import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/modules/hadeth/hadeth_details.dart';
import 'package:islami/modules/quran/quran_details.dart';
import 'package:islami/modules/splash_screen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lighttheme,
      darkTheme: AppTheme.darktheme,
      debugShowCheckedModeBanner: false,
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
