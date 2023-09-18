import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  const QuranDetails({super.key});

  static const String routeName = "quranview";

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
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
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            width: mediaquery.width,
            height: mediaquery.height,
            margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
            decoration: BoxDecoration(
                color: Color(0xffF8F8F8).withOpacity(0.8),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "sura name",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.play_circle,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  indent: 30,
                  endIndent: 30,
                  thickness: 2,
                )
              ],
            ),
          ),
        ));
  }
}
