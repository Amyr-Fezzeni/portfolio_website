import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/Pages/sections/certifications.dart';
import 'package:flutter_portfolio_website/Pages/sections/contact.dart';
import 'package:flutter_portfolio_website/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/Pages/sections/skills.dart';
import 'package:flutter_portfolio_website/custom%20widgets/appbar/appbar.dart';

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
