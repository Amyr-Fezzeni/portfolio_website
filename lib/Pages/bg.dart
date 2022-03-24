import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

class BG extends StatelessWidget {
  const BG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: bgColor,
      height: size.height,
      width: size.width,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: List<Widget>.generate(
            20,
            (index) => Image.asset(
                  "assets/images/bg_icons.png",
                  width: 250,
                )),
      ),
    );
  }
}
