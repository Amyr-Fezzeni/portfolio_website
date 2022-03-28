import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class BG extends StatelessWidget {
  const BG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
      color: state.bgcolor,
      height: size.height,
      width: size.width,
      // child: Opacity(
      //   opacity: 0.3,
      //   child: GridView.count(
      //     physics: const NeverScrollableScrollPhysics(),
      //     crossAxisCount: 4,
      //     children: List<Widget>.generate(
      //         20,
      //         (index) => Image.asset(
      //               "assets/images/bg_icons.png",
      //               width: 250,
      //             )),
      //   ),
      // ),
    );
  }
}
