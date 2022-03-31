import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/title_widget.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class Photography extends StatelessWidget {
  const Photography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
        margin: const EdgeInsets.only(bottom: 150),
        height: 600,
        width: size.width * 0.9,
        child: Column(
          children: [
            const TitleWidget(
              title: "Photography",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: 400,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.vPhotos.isEmpty
                          ? Container()
                          : state.vPhotos[index];
                    },
                    itemCount: state.vPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: 500,
                    itemWidth: 330,
                    curve: Curves.easeInOut,
                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 450,
                  width: 600,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.hPhotos.isEmpty
                          ? Container()
                          : state.hPhotos[index];
                    },
                    itemCount: state.hPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: 330,
                    itemWidth: 500,
                    curve: Curves.easeInOut,
                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class PhotographyPhone extends StatelessWidget {
  const PhotographyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
        margin: const EdgeInsets.only(bottom: 100),
        // height: 600,
        width: size.width * 0.99,
        child: Column(
          children: [
            const TitleWidgetPhone(
              title: "Photography",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: 400,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.vPhotos.isEmpty
                          ? Container()
                          : state.vPhotos[index];
                    },
                    itemCount: state.vPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: 500,
                    itemWidth: 330,
                    curve: Curves.easeInOut,
                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 300,
                  // width: 600,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.hPhotos.isEmpty
                          ? Container()
                          : state.hPhotos[index];
                    },
                    itemCount: state.hPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: 240,
                    itemWidth: 400,
                    curve: Curves.easeInOut,
                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
