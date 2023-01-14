import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class HPicture extends StatelessWidget {
  final String link;
  final double aspect;
  const HPicture({Key? key, required this.link, required this.aspect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: aspect,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(link))),
        ),
      ),
    );
  }
}

class ProjectPicture extends StatelessWidget {
  final String link;
  final double aspect;
  const ProjectPicture({Key? key, required this.link, required this.aspect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = context.read<StateProvider>();
    return SizedBox(
      child: AspectRatio(
        aspectRatio: aspect,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              // color: style.bgcolor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.contain, image: AssetImage(link))),
        ),
      ),
    );
  }
}
