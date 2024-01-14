import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class HoverButton extends StatefulWidget {
  final String name;
  final int index;
  const HoverButton({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    var style = context.read<StateProvider>();
    return Container(
      margin: const EdgeInsets.all(10),
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () => context.read<StateProvider>().jumpToSection(widget.index),
        child: MouseRegion(
            onEnter: (event) => setState(() {
                  isSelected = true;
                }),
            onExit: (event) => setState(() {
                  isSelected = false;
                }),
            onHover: (event) => setState(() {}),
            child: Center(
              child: isSelected
                  ? GlowText(widget.name,
                      blurRadius: 2,
                      offset: const Offset(1, 2),
                      glowColor: btnColor,
                      style:
                          style.text18.copyWith(color: btnColor, fontSize: 18))
                  : Text(widget.name,
                      style: context.watch<StateProvider>().text18),
            )),
      ),
    );
  }
}

class HoverButtonMenu extends StatefulWidget {
  final String name;
  final int index;
  const HoverButtonMenu({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  State<HoverButtonMenu> createState() => _HoverButtonMenuState();
}

class _HoverButtonMenuState extends State<HoverButtonMenu> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    var state = context.read<StateProvider>();
    var style = context.read<StateProvider>();
    return Container(
      margin: const EdgeInsets.all(10),
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
          Future.delayed(const Duration(milliseconds: 300))
              .then((event) => state.jumpToSection(widget.index));
        },
        child: MouseRegion(
            onEnter: (event) => setState(() {
                  isSelected = true;
                }),
            onExit: (event) => setState(() {
                  isSelected = false;
                }),
            onHover: (event) => setState(() {}),
            child: Center(
              child: isSelected
                  ? GlowText(widget.name,
                      blurRadius: 2,
                      offset: const Offset(1, 2),
                      glowColor: btnColor,
                      style:
                          style.text18.copyWith(color: btnColor, fontSize: 18))
                  : Text(widget.name, style: state.text18),
            )),
      ),
    );
  }
}
