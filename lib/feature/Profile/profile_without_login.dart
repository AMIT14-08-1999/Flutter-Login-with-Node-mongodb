import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra/feature/Login/login_button_sheet.dart';
import 'package:myntra/feature/Profile/footer_content.dart';
import 'package:myntra/foundation/profile_items/profile_items.dart';
import 'package:myntra/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntra/foundation/theme/colors.dart';

class ProfileWithOutLoading extends StatelessWidget {
  const ProfileWithOutLoading({Key? key}) : super(key: key);
  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerheight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topContainerheight * .58,
                    color: AppColor.dummyColor,
                  ),
                  Container(
                    height: topContainerheight * .42,
                    color: AppColor.whiteColor,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  height: 132,
                  width: 132,
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset(
                        "assets/images/profile.png",
                        color: AppColor.bodyColor1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 22,
                  left: 165,
                  child: SPSolidButton(
                    text: "Login/SignUp",
                    minuswidth: 210,
                    onPressed: () {
                      Get.bottomSheet(
                        LoginButtonSheet(),
                      );
                    },
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                title: "Orders",
                subTitle: "Check Your Orders",
                assetName: "orders.png",
                isLast: false,
                onTap: () {
                  Get.bottomSheet(
                    LoginButtonSheet(),
                  );
                },
              ),
              const ProfileItem(
                title: "Help Center",
                subTitle: "help regarding your recent purches",
                assetName: "support.png",
                isLast: false,
              ),
              const ProfileItem(
                title: "Wishlist",
                subTitle: "Your most love style",
                assetName: "wishlist.png",
                isLast: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: const [
              ProfileItem(
                title: "Scan for coupon",
                assetName: "qr-code.png",
                isLast: false,
              ),
              ProfileItem(
                title: "Refer & Earn",
                assetName: "promotion.png",
                isLast: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const FooterContent(),
        const SizedBox(
          height: 50,
        ),
        Text(
          "APP VERSION 0.0.1",
          style: Theme.of(context).textTheme.overline,
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
