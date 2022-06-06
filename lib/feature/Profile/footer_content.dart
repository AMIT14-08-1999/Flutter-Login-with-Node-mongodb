import 'package:flutter/material.dart';
import 'package:myntra/foundation/sp_text_button/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SPTextButton(
          text: "FAQs",
        ),
        SPTextButton(
          text: "About US",
        ),
        SPTextButton(
          text: "Terms Of Use",
        ),
        SPTextButton(
          text: "Privacy Policy",
        ),
      ],
    );
  }
}
