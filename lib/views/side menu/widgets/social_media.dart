import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../contact/widgets/social_media.dart';
import '../../../providers/state_provider.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      margin: const EdgeInsets.only(
          top: defaultPadding / 2, bottom: defaultPadding),
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
          SocialMediaSmall(title: "Linkedin", image: "linkedin.png", index: 2),
          SocialMediaSmall(title: "Youtube", image: "youtube.png", index: 3),
          SocialMediaSmall(title: "Facebook", image: "facebook.png", index: 4),
          SocialMediaSmall(
              title: "CodinGame", image: "codingame.png", index: 5),
          SocialMediaSmall(
              title: "+216 54 230 376", image: "whatsapp.png", index: 6),
        ],
      ),
    );
  }
}
