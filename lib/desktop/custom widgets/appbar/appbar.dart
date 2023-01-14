import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/hover_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<StateProvider>().changeDisplayMode(false);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      // height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HoverButton(
            name: "Programming",
            index: 0,
          ),
          HoverButton(
            name: "Robotics",
            index: 1,
          ),
          HoverButton(
            name: "Photography",
            index: 2,
          ),
          HoverButton(
            name: "Contact",
            index: 3,
          ),
        ],
      ),
    );
  }
}
