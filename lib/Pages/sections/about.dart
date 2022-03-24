import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlurryContainer(
      height: 400,
      bgColor: Colors.black.withOpacity(0.7),
      blur: 6,
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    text: "I",
                    style: TextStyle(fontSize: 55, color: Colors.white),
                    children: [
                      TextSpan(
                        text: "'",
                        style: TextStyle(fontSize: 55, color: btnColor),
                      ),
                      TextSpan(
                        text: "M AMYR FEZZENI",
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                      TextSpan(
                        text: ".",
                        style: TextStyle(fontSize: 55, color: btnColor),
                      )
                    ]),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 20.0, color: btnColor),
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
                  style: text18white,
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              boxShadow: const [
                BoxShadow(blurRadius: 12, color: btnColor, offset: Offset(0, 0))
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 150,
              child: CircleAvatar(
                radius: 145,
                backgroundImage: myImage,
                backgroundColor: bgColor,
              ),
            ),
          ),
        ],
      ),
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