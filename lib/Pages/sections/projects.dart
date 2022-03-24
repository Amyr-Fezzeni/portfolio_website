import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlurryContainer(
      bgColor: Colors.blueGrey.withOpacity(0.8),
      height: 500,
      width: size.width * 0.9,
      child: RichText(
        text: TextSpan(text: "const", style: key2, children: [
          TextSpan(
            text: " about",
            style: value,
          ),
          TextSpan(
            text: " = {\n",
            style: value,
          ),
          TextSpan(
            text: "     \"name\" ",
            style: key2,
          ),
          TextSpan(
            text: ":\"Amyr Fezzeni \",\n",
            style: value,
          ),
          TextSpan(
            text: "     \"mail\" ",
            style: key2,
          ),
          TextSpan(
            text: ":\"amyrfezzeni@gmail.com \",\n",
            style: value,
          ),
          TextSpan(
            text: "     \"Location\" ",
            style: key2,
          ),
          TextSpan(
            text: ":\Mannouba, Tunis \",\n",
            style: value,
          ),
          TextSpan(
            text: "     \"Phone\" ",
            style: key2,
          ),
          TextSpan(
            text: ":\"+216 54 230 376 \",\n",
            style: value,
          ),
          TextSpan(
            text: "     \"name\" ",
            style: key2,
          ),
          TextSpan(
            text: ":\"Amyr Fezzeni \",\n};",
            style: value,
          ),
        ]),
      ),
    );
  }
}
