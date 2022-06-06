import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra/foundation/theme/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.minuswidth,
  }) : super(key: key);
  final String text;
  final Function()? onPressed;
  final num minuswidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(AppColor.buttonColors),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width - minuswidth,
        height: 45,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
