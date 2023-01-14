import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';
import '../../../widgets/bottons.dart';
import '../project details/project_details.dart';

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

    final w = size.width > 1120
        ? (size.width - 344) * .33
        : size.width > 720
            ? (size.width - 44) * .33
            : (size.width - 44) * .5;
    log(size.width.toString());
    return Container(
      width: w,
      // height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: state.darkMode ? state.bgcolor : Colors.white,
          border:
              Border.all(color: state.invertedColor.withOpacity(.1), width: 2),
          boxShadow: const [
            BoxShadow(
                color: Colors.black45, blurRadius: 5, offset: Offset(3, 3))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: state.invertedColor.withOpacity(.2), width: 2),
                borderRadius: BorderRadius.circular(10)),
            height: w * .6,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                project.images.first.link.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            project.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: state.text18.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            project.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: state.text14.copyWith(height: 1.5),
          ),
          const SizedBox(
            height: 10,
          ),
          gradientButton(
              function: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProjectDetails(
                            project: project,
                          ))),
              text: "Read more",
              style: state),
        ],
      ),
    );
  }
}
