import 'package:flutter/material.dart';
import 'package:myntra/foundation/theme/colors.dart';

class GenderButton extends StatelessWidget {
  GenderButton({
    Key? key,
    required this.onGenderTap,
    required this.genderValue,
  }) : super(key: key);
  final Function(String value) onGenderTap;
  final String genderValue;
  final TextStyle textStyleWhite = TextStyle(color: Colors.white);
  final TextStyle textStyleDark = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.captionColors,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Female");
              },
              child: Container(
                color: genderValue == "Female"
                    ? AppColor.buttonColors
                    : Colors.white,
                child: Center(
                    child: Text(
                  "Female",
                  style:
                      genderValue == "Female" ? textStyleWhite : textStyleDark,
                )),
              ),
            ),
          ),
          const VerticalDivider(
            width: 4,
            color: Colors.green,
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Male");
              },
              child: Container(
                color: genderValue == "Male"
                    ? AppColor.buttonColors
                    : Colors.white,
                child: Center(
                    child: Text(
                  "Male",
                  style: genderValue == "Male" ? textStyleWhite : textStyleDark,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
