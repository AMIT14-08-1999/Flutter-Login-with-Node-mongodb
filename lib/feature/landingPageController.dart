import 'package:get/get.dart';
import 'package:myntra/service/network_handler/network_handler.dart';

class LandingPageController extends GetxController {
  RxString? token;
  RxBool loggedIn = false.obs;
  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  void checkLogin() async {
    var scopeToken = await NetworkHandler.getToken();
    if (scopeToken != null) {
      token?.value = scopeToken;
      loggedIn.value = true;
      var response = await NetworkHandler.get("user-details", scopeToken);
      print(response);
    }
  }
}
