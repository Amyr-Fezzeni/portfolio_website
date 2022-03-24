import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/index.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.black54,
      height: 80,
      // width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HoverButton(
            name: "About",
            index: 0,
          ),
          HoverButton(
            name: "Skills",
            index: 550,
          ),
          HoverButton(
            name: "Projects",
            index: 1150,
          ),
          HoverButton(
            name: "Photography",
            index: 1600,
          ),
          HoverButton(
            name: "Contact",
            index: 0,
          ),
        ],
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  String name;
  double index;
  HoverButton({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 35,
      width: 120,
      decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurpleAccent,
              Colors.cyan,
            ],
          ),
          boxShadow: [
            isSelected
                ? const BoxShadow(
                    color: btnColor, offset: Offset(0, 0), blurRadius: 12)
                : const BoxShadow(
                    color: Colors.black, offset: Offset(2, 2), blurRadius: 3)
          ]),
      child: GestureDetector(
        onTap: () => context.read<StateProvider>().setCont(widget.index),
        child: MouseRegion(
            onEnter: (event) => setState(() {
                  isSelected = true;
                }),
            onExit: (event) => setState(() {
                  isSelected = false;
                }),
            onHover: (event) => setState(() {}),
            child: Center(
              child: Text(
                widget.name,
                style: text18white,
              ),
            )),
      ),
    );
  }
}
