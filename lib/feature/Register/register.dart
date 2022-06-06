import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Login/controller/login_controller.dart';
import 'package:myntra/feature/Register/Register/register_controller.dart';
import 'package:myntra/foundation/gender_button/gender_button.dart';
import 'package:myntra/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntra/foundation/sp_text_field/sp_text_field.dart';
import 'package:myntra/foundation/theme/colors.dart';

class Registerpage extends StatelessWidget {
  Registerpage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  var loginController = Get.find<LoginController>();
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Complete your signup",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 15,
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile Number",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.captionColors,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            loginController.loginEditingController.text,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 13,
                        child: Icon(
                          Icons.check,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  SPTextFormField(
                    labelText: "Create Password",
                    textEditingController:
                        registerController.passwordTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cann't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  SPTextFormField(
                    labelText: "Full Name",
                    textEditingController:
                        registerController.fullTextController,
                  ),
                  const SizedBox(height: 15),
                  SPTextFormField(
                    labelText: "Email",
                    textEditingController:
                        registerController.emailTextController,
                  ),
                  const SizedBox(height: 15),
                  Obx(
                    () => GenderButton(
                      onGenderTap: onGendeTap,
                      genderValue: registerController.gender.value,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SPTextFormField(
                    labelText: "Alternative mobile number (OPTIONAL)",
                    textEditingController:
                        registerController.mobileNumberTextController,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "+91 |",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SPTextFormField(
                    labelText: "Hint Name",
                    textEditingController:
                        registerController.hintTextController,
                  ),
                  const SizedBox(height: 15),
                  SPSolidButton(
                    text: "CREATE ACCOUNT",
                    minuswidth: 0,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        registerController.register();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onGendeTap(String gender) {
    registerController.gender.value = gender;
  }
}
