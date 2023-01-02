import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class Profile extends StatefulWidget {
  final double size;
  const Profile({Key? key, this.size = 302}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(
        // color: state.bgcolor,
        borderRadius: BorderRadius.circular(350),
        boxShadow: [
          BoxShadow(
              blurRadius: 12,
              color: state.secondColor,
              offset: const Offset(0, 0))
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: child,
                );
              },
              child: Container(
                height: widget.size,
                width: widget.size,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(350),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.cyan,
                        Colors.blue,
                        Colors.purple,
                        Colors.red,
                      ],
                    )),
              ),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: widget.size / 2.1,
              backgroundImage: myImage,
              backgroundColor: state.bgcolor,
            ),
          ),
        ],
      ),
    );
  }
}
