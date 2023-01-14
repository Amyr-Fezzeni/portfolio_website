import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../desktop/custom widgets/skill/widgets/animated_progress_indicator.dart';
import '../../providers/state_provider.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: state.invertedColor.withOpacity(.2),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Top Skills",
            style: state.text18,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var skill in topSkills)
              Expanded(
                child: AnimatedSkill(
                  percentage: skill.last,
                  label: skill.first,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
