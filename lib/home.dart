import 'package:flutter/material.dart';
import 'package:islami/modules/hadeth/hadeth_screen.dart';
import 'package:islami/modules/quran/quran_screen.dart';
import 'package:islami/modules/radio/radio_screen.dart';
import 'package:islami/modules/sebha/sebha_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const String routeName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    Quran(),
    Hadeth(),
    Sebha(),
    Radio_screen(),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("اسلامي"),
          ),
          body: screens[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ));
  }
}
