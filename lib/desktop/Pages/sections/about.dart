import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/about/profile.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 450,
            width: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(text: "I", style: state.title, children: [
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
                      DefaultTextStyle(
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 20.0, color: state.secondColor),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                SizedBox(
                  width: 450,
                  child: Text(
                    textAbout,
                    style: state.text18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: GlowButton(
                        width: 220,
                        glowColor: btnColor,
                        color: btnColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.download,
                              color: Colors.white,
                            ),
                            Text("Download Resume", style: text18white),
                          ],
                        ),
                        onPressed: () =>
                            context.read<StateProvider>().downloadFile()))
              ],
            ),
          ),
          const Profile(),
        ],
      ),
    );
  }
}

class AboutPhone extends StatelessWidget {
  const AboutPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    // context.read<StateProvider>().changeDisplayMode(true);
    return Container(
      margin: const EdgeInsets.only(bottom: 100, top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Profile(),
          SizedBox(
            height: 450,
            width: size.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(text: "I", style: state.titlePhone, children: [
                    TextSpan(
                      text: "'",
                      style: state.secondTitlePhone,
                    ),
                    TextSpan(
                      text: "M Amyr Fezzeni",
                      style: state.titlePhone,
                    ),
                    TextSpan(
                      text: ".",
                      style: state.secondTitlePhone,
                    )
                  ]),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTextStyle(
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 18.0, color: state.secondColor),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                SizedBox(
                  // width: 450,
                  child: Text(
                    textAbout,
                    style: state.text18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: GlowButton(
                        width: 220,
                        glowColor: btnColor,
                        color: btnColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.download,
                              color: Colors.white,
                            ),
                            Text("Download Resume", style: text18white),
                          ],
                        ),
                        onPressed: () =>
                            context.read<StateProvider>().downloadFile()))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
