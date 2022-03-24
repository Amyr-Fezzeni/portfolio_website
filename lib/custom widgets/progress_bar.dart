import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

class ProgressBarSkill extends StatefulWidget {
  final String title;
  final int level;
  const ProgressBarSkill({Key? key, required this.title, required this.level})
      : super(key: key);

  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<ProgressBarSkill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              widget.title,
              textAlign: TextAlign.end,
              style: text18white,
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width * 0.75 - 200,
            child: FAProgressBar(
              currentValue: widget.level,
              displayText: "%",
              borderRadius: BorderRadius.circular(0),
              animatedDuration: const Duration(seconds: 3),
              backgroundColor: Colors.white10,
              progressColor: btnColor,
            ),
          ),
        ],
      ),
    );
  }
}
