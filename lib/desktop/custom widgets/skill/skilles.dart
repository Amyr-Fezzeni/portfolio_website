import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/skill/widgets/animated_progress_indicator.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .7,
      color: state.bgcolor,
      child: Wrap(
        children: [
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          // AnimatedSkill(percentage: 95, label: "Flutter"),
          ...allSkills
              .map((e) => AnimatedSkill(percentage: e.last, label: e.first))
              .toList()
        ],
      ),
    );
  }
}
