import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/Pages/sections/skills.dart';

class SwiperInfo extends StatefulWidget {
  const SwiperInfo({Key? key}) : super(key: key);

  @override
  State<SwiperInfo> createState() => _SwiperInfoState();
}

class _SwiperInfoState extends State<SwiperInfo> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> allCards = [About(), Skill(), Projects()];
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return allCards[index];
        },
        itemCount: allCards.length,
        duration: 500,
        loop: true,
        itemHeight: 600,
        itemWidth: 1150,
        layout: SwiperLayout.TINDER,
      ),
    );
  }
}
