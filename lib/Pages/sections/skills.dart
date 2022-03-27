import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';
import 'package:flutter_portfolio_website/custom%20widgets/skill/progress_bar_skill.dart';
import 'package:provider/provider.dart';
import '../../providers/state_provider.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return BlurryContainer(
        bgColor: Colors.black.withOpacity(0.0),
        blur: 6,
        height: 650,
        width: size.width * 0.9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 50,
                  color: Colors.grey,
                ),
                Text(
                  "   Skills   ",
                  style: state.title,
                ),
                Container(
                  height: 1,
                  width: 50,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ProgressBarSkill(title: "Python", level: state.skil ? 95 : 0),
            ProgressBarSkill(title: "Flutter", level: state.skil ? 90 : 0),
            ProgressBarSkill(title: "Dart", level: state.skil ? 90 : 0),
            ProgressBarSkill(title: "Java", level: state.skil ? 80 : 0),
            ProgressBarSkill(title: "NodeJS", level: state.skil ? 75 : 0),
            ProgressBarSkill(
                title: "State Management", level: state.skil ? 90 : 0),
            ProgressBarSkill(
                title: "Responsive UI", level: state.skil ? 75 : 0),
            ProgressBarSkill(title: "SQL", level: state.skil ? 75 : 0),
            ProgressBarSkill(title: "MongoDB", level: state.skil ? 85 : 0),
            ProgressBarSkill(title: "Firebase", level: state.skil ? 85 : 0),
          ],
        ));
  }
}
