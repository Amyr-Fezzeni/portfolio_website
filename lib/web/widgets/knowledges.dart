import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: state.invertedColor.withOpacity(.2),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: state.text18,
          ),
        ),
        const KnowledgeText(text: "Flutter, Dart"),
        const KnowledgeText(text: "Stylus, Sass, Less"),
        const KnowledgeText(text: "Gulp, Webpack, Grunt"),
        const KnowledgeText(text: "GIT Knowledge"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: state.secondColor,
          ),
          const SizedBox(width: defaultPadding / 2),
          Text(
            text,
            style: state.text14,
          ),
        ],
      ),
    );
  }
}
