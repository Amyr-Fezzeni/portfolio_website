import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/photography/h_picture.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/video%20player/youtube_player.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:provider/provider.dart';

import '../../../../providers/state_provider.dart';

class DesktopProjectDetails extends StatelessWidget {
  final ProjectModel project;
  const DesktopProjectDetails({Key? key, required this.project})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    ScrollController c1 = ScrollController();

    ScrollController c2 = ScrollController();
    return Container(
      width: size.width,
      height: size.height,
      color: state.bgcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: c1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                project.images.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: size.height * 0.6,
                        width: size.width * 0.4,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return ProjectPicture(
                                link: project.images[index].link,
                                aspect: 7 / 5.3);
                          },
                          itemCount: project.images.length,
                          duration: 500,
                          loop: true,
                          itemHeight: size.height * 0.6,
                          itemWidth: size.width * 0.4,
                          curve: Curves.easeInOut,
                          layout: SwiperLayout.TINDER,
                          onIndexChanged: (index) {},
                        ),
                      )
                    : const SizedBox(),
                project.videos.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: size.height * 0.6,
                        width: size.width * 0.4,
                        child: YoutubePlayerWidget(links: project.videos))
                    : const SizedBox(),
                
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: size.height * 0.8,
            width: 1,
            color: btnColor,
          ),
          SingleChildScrollView(
            controller: c2,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  project.getLanguagesWithIcons(state.text18),
                const SizedBox(
                  height: 20,
                ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: Wrap(
                      spacing: 10,
                      children: project.getkeyWors(state.text18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    // padding: const EdgeInsets.all(20),
                    width: size.width * 0.5,
                    child: Text(
                      project.description,
                      style: state.text18,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
