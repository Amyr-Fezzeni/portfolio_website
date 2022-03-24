import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';
import 'package:flutter_portfolio_website/custom%20widgets/progress_bar.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlurryContainer(
        bgColor: Colors.black.withOpacity(0.7),
        blur: 6,
        height: 500,
        width: size.width * 0.9,
        child: Column(
          children: const [
            ProgressBarSkill(title: "Python", level: 95),
            ProgressBarSkill(title: "Flutter", level: 90),
            ProgressBarSkill(title: "Dart", level: 90),
            ProgressBarSkill(title: "Java", level: 80),
            ProgressBarSkill(title: "NodeJS", level: 75),
            ProgressBarSkill(title: "State Management", level: 90),
            ProgressBarSkill(title: "Responsive UI", level: 75),
            ProgressBarSkill(title: "SQL", level: 75),
            ProgressBarSkill(title: "MongoDB", level: 85),
            ProgressBarSkill(title: "Firebase", level: 85),
          ],
        ));
  }
}
