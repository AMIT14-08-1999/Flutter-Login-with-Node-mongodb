import 'package:flutter/cupertino.dart';

const double mobileSize = 280;
const double tabSize = 720;
const double webSize = 1300.0;

class Responsive {
  static Widget? getResponsiveWidget(BuildContext context,
      {Widget? mobile, Widget? tab, Widget? web}) {
    if (isTab(context) && tab != null) {
      return tab;
    } else if (isWebSite(context) && web != null) {
      return web;
    } else {
      return mobile;
    }
  }

  static bool isMobile(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= mobileSize && screenSize.width < tabSize;
  }

  static bool isTab(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= tabSize && screenSize.width < webSize;
  }

  static bool isWebSite(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= webSize;
  }
}
