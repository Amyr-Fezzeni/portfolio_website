import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/custom%20widgets/projects/project_card.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';

class ProjectCardAnimated extends StatefulWidget {
  final ProjectModel model;
  const ProjectCardAnimated({Key? key, required this.model}) : super(key: key);

  @override
  State<ProjectCardAnimated> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCardAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  // ignore: prefer_typing_uninitialized_variables
  late final _animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation, child: ProjectCard(model: widget.model));
  }
}
