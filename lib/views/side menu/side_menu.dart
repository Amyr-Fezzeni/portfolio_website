import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/views/side%20menu/widgets/social_media.dart';
import 'package:flutter_portfolio_website/widgets/bottons.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';
import 'widgets/area_info_text.dart';
import 'widgets/coding.dart';
import 'widgets/knowledges.dart';
import 'widgets/my_info.dart';
import 'widgets/skills.dart';

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
        child: Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: Column(
              children: [
                const MyInfo(),
                // Divider(
                //   color: state.invertedColor.withOpacity(.2),
                // ),
                gradientButton(
                    function: () {}, text: "DOWNLOAD CV", style: state),
                Divider(
                  color: state.invertedColor.withOpacity(.2),
                ),
                const AreaInfoText(
                  title: "Address",
                  text: "Tunis, Tunisia",
                ),
                const AreaInfoText(
                  title: "Email",
                  text: "amyrfezzeni@gmail.com",
                ),
                const AreaInfoText(
                  title: "Phone",
                  text: "+216 54 230 376",
                ),

                const Skills(),
                const SizedBox(height: defaultPadding),
                const Coding(),
                const Knowledges(),
                Divider(
                  color: state.invertedColor.withOpacity(.2),
                ),
                // const SizedBox(height: defaultPadding / 2),
                const SocialMediaWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
