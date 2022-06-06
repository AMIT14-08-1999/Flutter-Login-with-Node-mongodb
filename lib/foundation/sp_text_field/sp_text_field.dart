import 'package:flutter/material.dart';
import 'package:myntra/foundation/theme/colors.dart';

class SPTextFormField extends StatelessWidget {
  const SPTextFormField({
    Key? key,
    required this.labelText,
    this.validator,
    this.prefixIcon,
    this.textEditingController,
  }) : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        enableInteractiveSelection: false,
        keyboardType: TextInputType.number,
        controller: textEditingController,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 11,
          ),
          prefixIcon: prefixIcon,
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
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
