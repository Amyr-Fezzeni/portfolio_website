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
            "Skills",
            style: state.text18,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedSkill(
                percentage: 80,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedSkill(
                percentage: 72,
                label: "Django",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedSkill(
                percentage: 65,
                label: "Firebase",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
