import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/providers/language_provider.dart';
import 'package:flutter_portfolio_website/services/language_service.dart';
import 'package:provider/provider.dart';

import '../consts/consts.dart';
import '../providers/state_provider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = context.watch<StateProvider>();
    var lan = context.read<LanguageProvider>();
    var size = MediaQuery.of(context).size;
    var s = context.read<StateProvider>();
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: .2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/jarvis_banner.gif"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50),
          // decoration: BoxDecoration(
          // image: const DecorationImage(
          //     image: AssetImage("assets/images/jarvis_banner.gif"),
          //     fit: BoxFit.cover),
          // ),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  // decoration: const BoxDecoration(color: Colors.black26),
                  child: RichText(
                    text: TextSpan(
                        text: txt("I"),
                        style: style.title.copyWith(),
                        children: [
                          TextSpan(
                            text: context
                                        .watch<LanguageProvider>()
                                        .currentLanguage ==
                                    "English"
                                ? "'"
                                : " ",
                            style: style.secondTitle,
                          ),
                          TextSpan(
                            text: "${txt("M")} $fullName",
                            style: style.title.copyWith(),
                          ),
                          TextSpan(
                            text: ".",
                            style: style.secondTitle,
                          )
                        ]),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  // decoration: const BoxDecoration(color: Colors.black26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "<",
                          style: style.text18.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "flutter",
                              style: style.text18
                                  .copyWith(color: style.secondColor),
                            ),
                            TextSpan(
                              text: ">",
                              style: style.text18
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      DefaultTextStyle(
                        textAlign: TextAlign.left,
                        style: style.text18.copyWith(fontSize: 18.0),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(seconds: 3),
                          animatedTexts: [
                            TypewriterAnimatedText(
                                txt("software engineering Student")),
                            TypewriterAnimatedText(
                                txt("Flutter & Python Developer")),
                            TypewriterAnimatedText(
                                txt("Professional Photographer")),
                          ],
                          onTap: () {},
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: " </",
                          style: style.text18
                              .copyWith(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "flutter",
                              style: style.text18
                                  .copyWith(color: style.secondColor),
                            ),
                            TextSpan(
                              text: ">",
                              style: style.text18
                                  .copyWith(fontWeight: FontWeight.bold),
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
                  // decoration: const BoxDecoration(color: Colors.black26),
                  // width: size.width * .45,
                  child: Text(
                    txt(textAbout),
                    style: style.text18.copyWith(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 10,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => lan.setDefaultLanguage(
                    lan.currentLanguage != "English" ? "English" : "Frensh"),
                child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: style.bgcolor.withOpacity(.1),
                      border: Border.all(
                          color: style.invertedColor.withOpacity(.9), width: 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        context.watch<LanguageProvider>().currentLanguage,
                        style: style.text14,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.language,
                        color: style.invertedColor,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CupertinoSwitch(
                    value: style.darkMode,
                    activeColor: btnColor,
                    onChanged: (b) {
                      s.changeDarkMode(b);
                    }),
              ),
              if (size.width <= 1120)
                Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(
                      color: style.bgcolor.withOpacity(.1),
                      border: Border.all(
                          color: style.invertedColor.withOpacity(.9), width: 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: InkWell(
                      child: Icon(
                        Icons.menu,
                        color: style.invertedColor,
                        size: 20,
                      ),
                      onTap: () => Scaffold.of(context).openDrawer()),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
