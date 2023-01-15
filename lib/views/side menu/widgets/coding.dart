import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';
import '../../../widgets/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Coding",
            style: state.text18,
          ),
        ),
        for (var skill in allSkills)
          AnimatedLinearProgressIndicator(
            percentage: (skill.last as int) * 0.01,
            label: skill.first,
          ),
      ],
    );
  }
}
