import 'package:flutter/material.dart';
import 'package:myntra/feature/Categories/Responsive/responsive.dart';
import 'package:myntra/feature/Categories/headers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Responsive.getResponsiveWidget(context,
                mobile: Container(), tab: const Header(), web: const Header()),
          ),
          Expanded(child: Container()),
          Container()
        ],
      ),
    );
  }
}
