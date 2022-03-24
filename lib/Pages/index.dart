import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/bg.dart';
import 'package:flutter_portfolio_website/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/Pages/sections/skills.dart';
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
    return Scaffold(
      // body: NestedScrollView(
      //   headerSliverBuilder: (context, e) => [
      //     SliverAppBar(
      //       // backgroundColor: bgColor,
      //       elevation: 5,

      //       shadowColor: Colors.black,
      //       forceElevated: true,
      //       title: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           HoverButton(name: "About"),
      //           HoverButton(name: "Skills"),
      //           HoverButton(name: "Projects"),
      //           HoverButton(name: "Experience"),
      //           HoverButton(name: "Contact"),
      //         ],
      //       ),
      //     )
      //   ],
      body: Stack(
        children: [
          const Opacity(opacity: 0.5, child: BG()),
          SingleChildScrollView(
            controller: state.controller,
            // physics: const NeverScrollableScrollPhysics(),
            child: Container(
              // height: size.height,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
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
                  Photography(),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
