import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/custom%20widgets/appbar/hover_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HoverButton(
            name: "About",
            index: 0,
          ),
          HoverButton(
            name: "Skills",
            index: 680,
          ),
          HoverButton(
            name: "Projects",
            index: 1350,
          ),
          HoverButton(
            name: "Photography",
            index: 2350,
          ),
          HoverButton(
            name: "Contact",
            index: 0,
          ),
        ],
      ),
    );
  }
}
