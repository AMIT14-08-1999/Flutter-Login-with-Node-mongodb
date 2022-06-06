import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Login/controller/login_controller.dart';
import 'package:myntra/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntra/foundation/theme/colors.dart';

class LoginButtonSheet extends StatelessWidget {
  LoginButtonSheet({Key? key}) : super(key: key);
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: AppColor.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/logo-big.png",
                  height: 45,
                  width: 45,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.clear,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "  or",
                    style: TextStyle(
                      color: Color.fromARGB(255, 240, 4, 169),
                      fontSize: 19,
                    ),
                  ),
                  TextSpan(
                    text: " SignUp",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              height: 43,
              child: TextField(
                enableInteractiveSelection: false,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                controller: loginController.loginEditingController,
                decoration: InputDecoration(
                  labelText: "Mobile Number*",
                  labelStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                  ),
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.captionColors,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "By continueting, I agree to the ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: " Term of Use",
                    style: TextStyle(
                      color: AppColor.buttonColors,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const TextSpan(
                    text: " & ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Privacy & Policy",
                    style: TextStyle(
                      color: AppColor.buttonColors,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SPSolidButton(
              text: "Continue",
              minuswidth: 0,
              onPressed: loginController.login,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Having trouble logging in?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12.5,
                    ),
                  ),
                  TextSpan(
                    text: "Get Help",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
