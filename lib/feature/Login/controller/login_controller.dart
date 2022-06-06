import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Categories/categories.dart';
import 'package:myntra/feature/Login/model/login_model.dart';
import 'package:myntra/feature/Register/register.dart';
import 'package:myntra/feature/landingPage.dart';
import 'package:myntra/service/network_handler/network_handler.dart';

class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();
  void login() async {
    LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
    var response =
        await NetworkHandler.post(loginModelToJson(loginModel), "login");
    var data = json.decode(response);
    if (data["msg"] == "register") {
      Get.to(Registerpage());
    } else {
      await NetworkHandler.storeToken(data['token']);
      Get.offAll(Categories());
    }
  }
}
