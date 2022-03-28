import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/background/bg.dart';
import 'package:flutter_portfolio_website/Pages/home%20page/sections.dart';
import 'package:flutter_portfolio_website/custom%20widgets/home/dark_mode_switch.dart';
import 'package:flutter_portfolio_website/custom%20widgets/home/menu_icon.dart';
import 'package:flutter_portfolio_website/custom%20widgets/home/up_button.dart';
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
    context.read<StateProvider>().init();
  }

// min 1120 px width for desktop
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Opacity(opacity: 1, child: BG()),
          SingleChildScrollView(
            controller: context.watch<StateProvider>().controller,
            child: const Sections(),
          ),
          const DarkModeSwitch(),
          const UpButton(),
          const MenuIcon(),
        ],
      ),
    );
  }
}
