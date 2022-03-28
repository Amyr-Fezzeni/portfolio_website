import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        right: 20,
        child: Visibility(
          visible: context.watch<StateProvider>().isUp,
          child: SpeedDial(
              buttonSize: 40,
              childrenButtonSize: 50,
              spaceBetweenChildren: 10,
              animatedIcon: AnimatedIcons.menu_close,
              overlayOpacity: 0.74,
              animationSpeed: 500,
              direction: SpeedDialDirection.down,
              overlayColor: Colors.black,
              children: [
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.person),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(0)),
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.sort_outlined),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(1)),
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.precision_manufacturing_sharp),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(2)),
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.assignment_turned_in_rounded),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(3)),
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.camera),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(4)),
                SpeedDialChild(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.mail),
                    onTap: () =>
                        context.read<StateProvider>().jumpToSection(5)),
              ]),
        ));
  }
}
