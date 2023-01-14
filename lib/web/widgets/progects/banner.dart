import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../consts/consts.dart';
import '../../../providers/state_provider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    var s = context.read<StateProvider>();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: defaultPadding / 1.5),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/jarvis_banner.gif"),
              fit: BoxFit.cover),
          color: Colors.blueGrey.withOpacity(.1)),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                // decoration: const BoxDecoration(color: Colors.black26),
                child: RichText(
                  text: TextSpan(
                      text: "I",
                      style: state.title.copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "'",
                          style: state.secondTitle,
                        ),
                        TextSpan(
                          text: "M Amyr Fezzeni",
                          style: state.title.copyWith(color: Colors.white),
                        ),
                        TextSpan(
                          text: ".",
                          style: state.secondTitle,
                        )
                      ]),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(color: Colors.black26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "<",
                        style: state.text18.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "flutter",
                            style:
                                state.text18.copyWith(color: state.secondColor),
                          ),
                          TextSpan(
                            text: ">",
                            style: state.text18.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      textAlign: TextAlign.left,
                      style: state.text18
                          .copyWith(fontSize: 18.0, color: Colors.white),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        pause: const Duration(seconds: 3),
                        animatedTexts: [
                          TypewriterAnimatedText(
                              "software engineering Student"),
                          TypewriterAnimatedText("Flutter & Python Developer"),
                          TypewriterAnimatedText("Professional Photographer"),
                        ],
                        onTap: () {},
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: " </",
                        style: state.text18.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "flutter",
                            style:
                                state.text18.copyWith(color: state.secondColor),
                          ),
                          TextSpan(
                            text: ">",
                            style: state.text18.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(color: Colors.black26),
                // width: size.width * .45,
                child: Text(
                  textAbout,
                  style: state.text18.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Positioned(
            right: 20,
            top: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CupertinoSwitch(
                      value: state.darkMode,
                      activeColor: btnColor,
                      onChanged: (b) {
                        s.changeDarkMode(b);
                      }),
                ),
                if (size.width <= 1120)
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey.withOpacity(0.3)),
                    child: InkWell(
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 26,
                        ),
                        onTap: () => Scaffold.of(context).openDrawer()),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
