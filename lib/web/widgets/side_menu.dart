import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/contact/social_media.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    double width() {
      double w = MediaQuery.of(context).size.width;
      if (w > 400) return 300;
      return 280;
    }

    return Drawer(
      backgroundColor: state.bgcolor,
      width: width(),
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Divider(
              color: state.invertedColor.withOpacity(.2),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Address",
                      text: "Mannouba, Tunis",
                    ),
                    const AreaInfoText(
                      title: "Country",
                      text: "Tunisia",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "29",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    Divider(
                      color: state.invertedColor.withOpacity(.2),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: state.invertedColor.withOpacity(.3)),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: state.text18,
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              Icon(
                                Icons.file_download,
                                size: 25,
                                color: state.invertedColor.withOpacity(.7),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: state.invertedColor.withOpacity(.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SocialMediaSmall(
                            title: "GitHub",
                            image: "github.png",
                            index: 1,
                          ),
                          SocialMediaSmall(
                              title: "Linkedin",
                              image: "linkedin.png",
                              index: 2),
                          SocialMediaSmall(
                              title: "Youtube", image: "youtube.png", index: 3),
                          SocialMediaSmall(
                              title: "Facebook",
                              image: "facebook.png",
                              index: 4),
                          SocialMediaSmall(
                              title: "CodinGame",
                              image: "codingame.png",
                              index: 5),
                          SocialMediaSmall(
                              title: "+216 54 230 376",
                              image: "whatsapp.png",
                              index: 6),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
