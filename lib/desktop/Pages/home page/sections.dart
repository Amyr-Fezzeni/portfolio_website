import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width > 1120;
    if (size) {
      context.read<StateProvider>().changeDisplayMode(context);
    } else {
      context.read<StateProvider>().changeDisplayMode(context);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: size ? desktopSections : phoneSections,
      ),
    );
  }
}
