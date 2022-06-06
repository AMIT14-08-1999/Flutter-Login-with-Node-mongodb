import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Categories/categories.dart';
import 'package:myntra/feature/Profile/profile.dart';
import 'package:myntra/feature/home_page/homePage.dart';
import 'package:myntra/feature/landingPageController.dart';
import 'package:myntra/foundation/sp_icon/sp_icon.dart';
import 'package:myntra/foundation/theme/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [const HomePage(), const Categories(), const Profile()];
  var landingPageController = Get.put(LandingPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.buttonColors,
        selectedLabelStyle: const TextStyle(fontSize: 15),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
                assetname: "logo-black.png", isSelected: 0 == currentIndex),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
                assetname: "categories.png", isSelected: 1 == currentIndex),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon:
                SPIcon(assetname: "profile.png", isSelected: 2 == currentIndex),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
