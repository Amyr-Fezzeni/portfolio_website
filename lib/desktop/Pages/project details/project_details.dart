import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/Pages/project%20details/sections/desktop_project_details.dart';
import 'package:flutter_portfolio_website/desktop/Pages/project%20details/sections/phone_project_details.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class ProjectDetails extends StatelessWidget {
  final ProjectModel project;
  const ProjectDetails({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    bool isDesktop = MediaQuery.of(context).size.width > 700;
    return Scaffold(
        appBar: AppBar(
          title: Text(project.name, style: state.text18),
          centerTitle: true,
          backgroundColor: state.bgcolor,
        ),
        body: isDesktop
            ? DesktopProjectDetails(project: project)
            : PhoneProjectDetails(project: project));
  }
}
