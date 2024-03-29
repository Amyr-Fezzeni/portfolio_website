import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/Pages/project%20details/project_details.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/title_widget.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/projects/filter_project_button.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/projects/project_card.dart';

import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      height: 900,
      width: size.width * 0.8,
      child: Column(
        children: [
          const TitleWidget(
            title: "Projects",
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: btnColor),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                  onPressed: () =>
                      context.read<StateProvider>().filterProject("all"),
                  child: Text(
                    "All",
                    style: state.text18,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButton(
                  name: "Flutter", image: "assets/projects/flutter.png"),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButton(
                  name: "Python", image: "assets/projects/python.png"),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButton(
                  name: "Java", image: "assets/projects/java.png")
            ],
          ),
          const Divider(
            color: btnColor,
            thickness: 1,
            height: 50,
          ),
          Wrap(
            children: state.projects
                .map((model) => ProjectCard(model: model))
                .toList(),
          )
        ],
      ),
    );
  }
}

class ProjectsPhone extends StatelessWidget {
  const ProjectsPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    ScrollController _controller = ScrollController();
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      // height: 900,
      width: size.width * 0.99,
      child: Column(
        children: [
          const TitleWidgetPhone(
            title: "Projects",
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: btnColor),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                  onPressed: () =>
                      context.read<StateProvider>().filterProject("all"),
                  child: Text(
                    "All",
                    style: state.text18,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButtonPhone(
                  name: "Flutter", image: "assets/projects/flutter.png"),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButtonPhone(
                  name: "Python", image: "assets/projects/python.png"),
              const SizedBox(
                width: 20,
              ),
              const FilterProjectButtonPhone(
                  name: "Java", image: "assets/projects/java.png")
            ],
          ),
          const Divider(
            color: btnColor,
            thickness: 1,
            height: 50,
          ),
          SizedBox(
            height: 270,
            child: Scrollbar(
              controller: _controller,
              isAlwaysShown: true,
              showTrackOnHover: true,
              child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.projects.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProjectDetails(project: state.projects[i]))),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: Column(
                          children: [
                            ProjectCard(model: state.projects[i]),
                            Text(
                              state.projects[i].name,
                              style: state.text18,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
