import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import '../../widgets/title_widget.dart';
import 'widgets/project_card.dart';


class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        child: Column(
          children: [
            const TitleWidget(
              title: "Projects",
            ),
            Wrap(
                alignment: WrapAlignment.start,
                runSpacing: 10,
                spacing: 10,
                children:  allProjects.map((e) => ProjectCard(project: e)).toList()),
          ],
        ));
  }
}
