import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';
import 'package:provider/provider.dart';
import '../../providers/state_provider.dart';

class Photography extends StatelessWidget {
  Photography({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return BlurryContainer(
        // bgColor: Colors.black.withOpacity(0.7),
        blur: 6,
        height: 600,
        width: size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 50,
                  color: Colors.grey,
                ),
                Text(
                  "   Photography   ",
                  style: state.text18,
                ),
                Container(
                  height: 1,
                  width: 50,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                    onIndexChanged: (index) {
                      // context.read<StateProvider>().changeList(index);
                    },
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
                    onIndexChanged: (index) {
                      // context.read<StateProvider>().changeList(index);
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
