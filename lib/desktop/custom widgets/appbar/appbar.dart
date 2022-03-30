import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/hover_button.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<StateProvider>().changeDisplayMode(false);
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
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
            index: 1,
          ),
          HoverButton(
            name: "Projects",
            index: 2,
          ),
          HoverButton(
            name: "Certifications",
            index: 3,
          ),
          HoverButton(
            name: "Photography",
            index: 4,
          ),
          HoverButton(
            name: "Contact",
            index: 5,
          ),
        ],
      ),
    );
  }
}
