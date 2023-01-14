import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/appbar.dart';
import 'package:flutter_portfolio_website/web/widgets/photography/photography.dart';
import 'package:flutter_portfolio_website/web/widgets/progects/projects.dart';
import 'package:flutter_portfolio_website/web/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import '../desktop/Pages/sections/certifications.dart';
import '../desktop/Pages/sections/contact.dart';
import '../providers/state_provider.dart';
import 'widgets/progects/banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<StateProvider>().initPhotos();
  }

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: state.bgcolor,
      drawer: const SideMenu(),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (size.width > 1120) const SideMenu(),
              SizedBox(
                width: size.width > 1120
                    ? MediaQuery.of(context).size.width - 300
                    : MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const HomeBanner(),
                      const CustomAppBar(),
                      const [
                        ProjectsGridView(),
                        Certifications(),
                        PhotographyWeb(),
                        Contact(),
                      ][state.curresntIndex]
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
