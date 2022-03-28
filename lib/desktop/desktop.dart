import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/Pages/background/bg.dart';
import 'package:flutter_portfolio_website/desktop/Pages/home%20page/sections.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/dark_mode_switch.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/menu_icon.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/up_button.dart';
import 'package:provider/provider.dart';
import '../providers/state_provider.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  void initState() {
    super.initState();
    context.read<StateProvider>().init();
  }

// min 1120 px width for desktop
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
      ),
    );
  }
}
