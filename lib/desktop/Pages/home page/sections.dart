import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/certifications.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/contact.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/skills.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/appbar.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: const [
          CustomAppBar(),
          About(),
          Skill(),
          Projects(),
          Certifications(),
          Photography(),
          Contact(),
        ],
      ),
    );
  }
}
