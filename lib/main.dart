import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myntra/feature/Categories/categories.dart';
import 'package:myntra/feature/landingPage.dart';
import 'package:myntra/foundation/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Myntra",
      theme: ThemeData(
        textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 14.5,
              letterSpacing: 0.15,
              color: AppColor.headline6,
            ),
            bodyText1: TextStyle(
              color: AppColor.bodyColor1,
              fontSize: 14,
            ),
            caption: TextStyle(
              fontSize: 11,
              color: AppColor.captionColors,
            )),
      ),
      home: const LandingPage(),
      //home: const Categories(),
    );
  }
}
//8 com