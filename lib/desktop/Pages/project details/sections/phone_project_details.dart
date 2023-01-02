import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/photography/h_picture.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/video%20player/youtube_player.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:provider/provider.dart';

import '../../../../providers/state_provider.dart';

class PhoneProjectDetails extends StatelessWidget {
  final ProjectModel project;
  const PhoneProjectDetails({Key? key, required this.project})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: state.bgcolor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            project.images.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: size.height * 0.6,
                        width: size.width * 0.9,
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
                          itemWidth: size.width * 0.9,
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
                      width: size.width * 0.9,
                      child: YoutubePlayerWidget(links: project.videos))
                  : const SizedBox(),
            
            Container(
              height: 1,
              width: size.width * 0.8,
              color: btnColor,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  project.getLanguagesWithIcons(state.text18),
            const SizedBox(
              height: 20,
            ),
                  SizedBox(
                    width: size.width,
                    child: Wrap(
                      spacing: 10,
                      children: project.getkeyWors(state.text18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Text(
                      project.description,
                      style: state.text18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
