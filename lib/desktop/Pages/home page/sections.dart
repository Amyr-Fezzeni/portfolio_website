import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width > 1120;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: size ? desktopSections : phoneSections,
      ),
    );
  }
}
