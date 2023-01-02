import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: allProjects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) => ProjectCard(
          project: allProjects[index],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: state.invertedColor.withOpacity(.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: state.text18.copyWith(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
          const Spacer(),
          Text(
            project.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: state.text14.copyWith(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: state.text18.copyWith(color: state.secondColor),
            ),
          ),
        ],
      ),
    );
  }
}
