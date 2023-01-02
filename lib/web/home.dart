import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/web/widgets/progects/projects.dart';
import 'package:flutter_portfolio_website/web/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import '../providers/state_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    var s = context.read<StateProvider>();
    return Scaffold(
      backgroundColor: state.bgcolor,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (size.width > 1120)
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CupertinoSwitch(
                              value: state.darkMode,
                              activeColor: btnColor,
                              onChanged: (b) {
                                s.changeDarkMode(b);
                              }),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "I",
                                style: state.title,
                                children: [
                                  TextSpan(
                                    text: "'",
                                    style: state.secondTitle,
                                  ),
                                  TextSpan(
                                    text: "M Amyr Fezzeni",
                                    style: state.title,
                                  ),
                                  TextSpan(
                                    text: ".",
                                    style: state.secondTitle,
                                  )
                                ]),
                          ),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        text: "<",
                                        style: state.text18.copyWith(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "flutter",
                                            style: state.text18.copyWith(
                                                fontSize: 20,
                                                color: state.secondColor),
                                          ),
                                          TextSpan(
                                            text: ">",
                                            style: state.text18.copyWith(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    DefaultTextStyle(
                                      textAlign: TextAlign.left,
                                      style: state.text18.copyWith(
                                        fontSize: 20.0,
                                        // color: state.secondColor
                                      ),
                                      child: AnimatedTextKit(
                                        repeatForever: true,
                                        pause: const Duration(seconds: 3),
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              "I'm a software engineering Student"),
                                          TypewriterAnimatedText(
                                              "I'm Flutter & Python Developer"),
                                          TypewriterAnimatedText(
                                              "I'm a Professional Photographer"),
                                        ],
                                        onTap: () {},
                                      ),
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: " </",
                                        style: state.text18.copyWith(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "flutter",
                                            style: state.text18.copyWith(
                                                fontSize: 20,
                                                color: state.secondColor),
                                          ),
                                          TextSpan(
                                            text: ">",
                                            style: state.text18.copyWith(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          SizedBox(
                            // width: size.width * .45,
                            child: Text(
                              textAbout,
                              style: state.text18,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const ProjectsGridView()
                    ],
                  ),
                ),
              ),
              // const DarkModeSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
