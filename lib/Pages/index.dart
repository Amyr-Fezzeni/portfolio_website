import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/bg.dart';
import 'package:flutter_portfolio_website/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/Pages/sections/skills.dart';
import 'package:flutter_portfolio_website/Pages/sections/swiper.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/appbar.dart';
import 'package:flutter_portfolio_website/custom%20widgets/progress_bar.dart';
import 'package:provider/provider.dart';

import '../custom widgets/blurry_container.dart';
import '../providers/state_provider.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    var s = context.read<StateProvider>();
    return Scaffold(
      body: Stack(
        children: [
          const Opacity(opacity: 1, child: BG()),
          SingleChildScrollView(
            controller: state.controller,
            // physics: const NeverScrollableScrollPhysics(),
            child: Container(
              // height: size.height,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  // SwiperInfo()
                  const CustomAppBar(),
                  const SizedBox(
                    height: 100,
                  ),
                  const About(),
                  const SizedBox(
                    height: 100,
                    //  ProgressBarSkill(title: "Flutter ", level: 95)
                  ),
                  const Skill(),
                  const SizedBox(
                    height: 100,
                  ),
                  const Projects(),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(),
                  // Photography(),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: CupertinoSwitch(
                value: state.darkMode,
                onChanged: (b) {
                  s.changeDarkMode(b);
                }),
          ),
          Positioned(
              bottom: 50,
              right: 50,
              child: FloatingActionButton(
                onPressed: () => s.setCont(1),
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: btnColor,
                  size: 35,
                ),
              ))
        ],
      ),
      // ),
    );
  }
}
