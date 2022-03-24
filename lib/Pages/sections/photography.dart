import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_portfolio_website/custom%20widgets/blurry_container.dart';
import 'package:flutter_portfolio_website/custom%20widgets/h_picture.dart';

class Photography extends StatelessWidget {
  Photography({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return BlurryContainer(
        bgColor: Colors.black.withOpacity(0.7),
        blur: 6,
        height: 300,
        width: size.width * 0.9,
        child: Scrollbar(
          controller: _controller,
          child: ListView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: List.generate(28, (index) => HPicture(index: index + 1)),
          ),
        ));
  }
}
