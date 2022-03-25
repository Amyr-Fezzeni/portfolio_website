import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/about/profile.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlurryContainer(
          height: 400,
          bgColor: Colors.black.withOpacity(0.0),
          blur: 6,
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
                height: 70,
              ),
              Container(
                width: 450,
                child: Text(
                  textAbout,
                  style: state.text18,
                ),
              )
            ],
          ),
        ),
        const Profile(),
      ],
    );
  }
}



//  RichText(
//                 text: TextSpan(text: "const", style: key2, children: [
//                   TextSpan(
//                     text: " about",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: " = {\n",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: "     \"name\" ",
//                     style: key2,
//                   ),
//                   TextSpan(
//                     text: ":\"Amyr Fezzeni \",\n",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: "     \"mail\" ",
//                     style: key2,
//                   ),
//                   TextSpan(
//                     text: ":\"amyrfezzeni@gmail.com \",\n",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: "     \"Location\" ",
//                     style: key2,
//                   ),
//                   TextSpan(
//                     text: ":\Mannouba, Tunis \",\n",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: "     \"Phone\" ",
//                     style: key2,
//                   ),
//                   TextSpan(
//                     text: ":\"+216 54 230 376 \",\n",
//                     style: value,
//                   ),
//                   TextSpan(
//                     text: "     \"name\" ",
//                     style: key2,
//                   ),
//                   TextSpan(
//                     text: ":\"Amyr Fezzeni \",\n};",
//                     style: value,
//                   ),
//                 ]),
//               ),