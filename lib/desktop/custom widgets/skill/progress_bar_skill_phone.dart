import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/skill/progress_bar_skill.dart';

class ProgressBarSkillPhone extends StatefulWidget {
  final String title;
  final int level;
  const ProgressBarSkillPhone(
      {Key? key, required this.title, required this.level})
      : super(key: key);

  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<ProgressBarSkillPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width * 0.75,
        child: FAProgressBar(
          currentValue: widget.level,
          displayText: "% ${widget.title}",
          borderRadius: BorderRadius.circular(0),
          animatedDuration: const Duration(seconds: 1),
          backgroundColor: Colors.white10,
          progressColor: btnColor,
        ),
      ),
    );
  }
}
