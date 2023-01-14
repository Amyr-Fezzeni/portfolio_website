import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/title_widget.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class PhotographyWeb extends StatelessWidget {
  const PhotographyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    double w = size.width > 1120 ? size.width * .72 : size.width * .95;
    List<String> allPhotos = [
      ...state.verticalPhotos,
      ...state.horizontalPhotos
    ];
    // allPhotos.shuffle();
    return Container(
        margin: const EdgeInsets.only(bottom: 150),
        // height: 600,
        // color: Colors.red,
        width: w,
        child: Column(
          children: [
            const TitleWidget(
              title: "Photography",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  // color: Colors.blue,
                  height: w * .47,
                  width: w * .37,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.vPhotos.isEmpty
                          ? Container()
                          : state.vPhotos[index];
                    },
                    itemCount: state.vPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: w * .45,
                    itemWidth: w * 0.32,
                    curve: Curves.easeInOut,
                    // autoplay: true,
                    // autoplayDelay: 3000,

                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: w * .47,
                  width: w * .52,
                  // color: Colors.amber,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return state.hPhotos.isEmpty
                          ? Container()
                          : state.hPhotos[index];
                    },
                    itemCount: state.hPhotos.length,
                    duration: 500,
                    loop: true,
                    itemHeight: w * .32,
                    itemWidth: w * .5,
                    curve: Curves.easeInOut,
                    layout: SwiperLayout.TINDER,
                    onIndexChanged: (index) {},
                  ),
                ),
              ],
            ),
            Divider(
              color: state.invertedColor,
              thickness: 1,
            ),
            SizedBox(
              // color: Colors.red,
              // width: 500,
              child: Wrap(
                children: [
                  ...allPhotos
                      .map(
                        (e) => Builder(builder: (context) {
                          bool vertical = e.contains("vertical");

                          return Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(5),
                            constraints: BoxConstraints(
                                maxWidth: vertical ? w * .28 : w * .35,
                                maxHeight: vertical ? w * .4 : w * .3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 193, 193, 193),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      offset: Offset(2, 2),
                                      blurRadius: 7)
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                color: Colors.transparent,
                                child: Hero(
                                  tag: e,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PhotoDetailScreen(url: e))),
                                      // onTap: () => showModalBottomSheet(
                                      //     isScrollControlled: true,
                                      //     clipBehavior:
                                      //         Clip.antiAliasWithSaveLayer,
                                      //     backgroundColor: Colors.transparent,
                                      //     context: context,
                                      //     builder: (context) => PhotoDetail(
                                      //           url: e,
                                      //         )),
                                      child: Image.asset(e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      )
                      .toList()
                ],
              ),
            )
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
                    // autoplay: true,
                    // autoplayDelay: 3000,
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

class PhotoDetail extends StatelessWidget {
  final String url;
  const PhotoDetail({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var style = context.watch<StateProvider>();
    return DraggableScrollableSheet(
        initialChildSize: 1,
        expand: false,
        builder: (_, controller) => Container(
              height: size.height,
              // margin: const EdgeInsets.all(50),
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Hero(
                  tag: url,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: style.bgcolor,
                          border: Border.all(
                              color: style.invertedColor.withOpacity(.2),
                              width: 3)),
                      child: Image.asset(
                        url,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}

class PhotoDetailScreen extends StatelessWidget {
  final String url;
  const PhotoDetailScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var style = context.watch<StateProvider>();
    return Scaffold(
        backgroundColor: style.bgcolor,
        body: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            height: size.height,
            width: size.width,
            child: Center(
              child: Hero(
                tag: url,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: style.bgcolor,
                      border: Border.all(
                          color: style.invertedColor.withOpacity(.2),
                          width: 3)),
                  child: Image.asset(
                    url,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
