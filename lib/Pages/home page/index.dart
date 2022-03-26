import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/background/bg.dart';
import 'package:flutter_portfolio_website/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/Pages/sections/skills.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/appbar/appbar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import '../../providers/state_provider.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      context.read<StateProvider>().initPhotos();
      context.read<StateProvider>().filterProject("all");
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    var s = context.read<StateProvider>();
    state.controller.addListener(() {
      s.changeVisivilituSkill();
      s.upButton();
    });
    return Scaffold(
      body: Stack(
        children: [
          const Opacity(opacity: 1, child: BG()),
          SingleChildScrollView(
            controller: state.controller,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  const CustomAppBar(),
                  const SizedBox(
                    height: 100,
                  ),
                  const About(),
                  const SizedBox(
                    height: 150,
                  ),
                  const Skill(),
                  const SizedBox(
                    height: 150,
                  ),
                  const Projects(),
                  const SizedBox(
                    height: 150,
                  ),
                  Photography(),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          // dark & light mode switch
          Positioned(
            top: 20,
            left: 20,
            child: CupertinoSwitch(
                value: state.darkMode,
                activeColor: btnColor,
                onChanged: (b) {
                  s.changeDarkMode(b);
                }),
          ),
          // up button
          Positioned(
              bottom: 20,
              right: 20,
              child: Visibility(
                visible: state.isUp,
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {
                      s.setControllerPosition(1);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_up,
                      color: btnColor,
                      size: 35,
                    ),
                  ),
                ),
              )),
          // menu button
          Positioned(
              top: 20,
              right: 20,
              child: Visibility(
                visible: state.isUp,
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
                          onTap: () => context
                              .read<StateProvider>()
                              .setControllerPosition(0)),
                      SpeedDialChild(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          child: const Icon(Icons.sort_outlined),
                          onTap: () => context
                              .read<StateProvider>()
                              .setControllerPosition(680)),
                      SpeedDialChild(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          child:
                              const Icon(Icons.precision_manufacturing_sharp),
                          onTap: () => context
                              .read<StateProvider>()
                              .setControllerPosition(1350)),
                      SpeedDialChild(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          child: const Icon(Icons.camera),
                          onTap: () => context
                              .read<StateProvider>()
                              .setControllerPosition(2350)),
                    ]),
              )),
        ],
      ),
    );
  }
}
