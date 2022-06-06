import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Login/controller/login_controller.dart';
import 'package:myntra/feature/Register/model/registerModel.dart';
import 'package:myntra/feature/landingPage.dart';
import 'package:myntra/service/network_handler/network_handler.dart';

class RegisterController extends GetxController {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController fullTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController mobileNumberTextController = TextEditingController();
  TextEditingController hintTextController = TextEditingController();
  RxString gender = "".obs;
  var loginController = Get.find<LoginController>();

  void register() async {
    RegisterModel registerModel = RegisterModel(
      mobileNo: loginController.loginEditingController.text,
      password: passwordTextController.text,
      gender: gender.value,
      alternativeMoNumber: mobileNumberTextController.text,
      email: emailTextController.text,
      fullName: fullTextController.text,
      hint: hintTextController.text,
    );
    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), "login/register");
    print(response);
    var data = json.decode(response);
    await NetworkHandler.storeToken(data['token']);
    Get.offAll(LandingPage());
  }
}
