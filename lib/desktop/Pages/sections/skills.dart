import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/title_widget.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/skill/progress_bar_skill.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget _allSkills() {
      return Column(
        children: allSkills
            .map((e) => ProgressBarSkill(
                title: e[0],
                level: context.watch<StateProvider>().skil ? e[1] : 0))
            .toList(),
      );
    }

    return Container(
        margin: const EdgeInsets.only(bottom: 150),
        height: 650,
        width: size.width * 0.9,
        child: Column(
          children: [
            const TitleWidget(
              title: "Skills",
            ),
            const SizedBox(
              height: 40,
            ),
            _allSkills(),
          ],
        ));
  }
}
