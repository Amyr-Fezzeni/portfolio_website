import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Skill extends StatefulWidget {
  final String title;
  final int level;
  final double circleskill = 120;
  const Skill({Key? key, required this.title, required this.level})
      : super(key: key);

  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      // color: Colors.amber,
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: widget.level / 100),
        duration: const Duration(seconds: 3),
        builder: (context, double value, child) {
          int percentage = (100 * value).ceil();
          return SizedBox(
            width: widget.circleskill,
            height: widget.circleskill,
            child: Stack(
              children: [
                Center(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return SweepGradient(
                              startAngle: 0.0,
                              endAngle: 3.14 * 2,
                              stops: [value, value],
                              center: Alignment.center,
                              colors: [btnColor, Colors.grey.withAlpha(30)])
                          .createShader(rect);
                    },
                    child: Container(
                      width: widget.circleskill,
                      height: widget.circleskill,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: widget.circleskill - 20,
                    height: widget.circleskill - 20,
                    decoration: BoxDecoration(
                        color: context.watch<StateProvider>().darkMode
                            ? const Color.fromARGB(255, 50, 50, 50)
                            : Colors.white,
                        shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
