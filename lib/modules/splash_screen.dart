import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/home.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = "SplashScreen";

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        AppTheme.isDark
            ? "assets/images/splash_dark.png"
            : "assets/images/splash.png",
        width: mediaquery.width,
        height: mediaquery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
