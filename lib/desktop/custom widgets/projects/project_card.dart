import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/Pages/project%20details/project_details.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel model;
  const ProjectCard({Key? key, required this.model}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
    late AnimationController controller;


  // ignore: prefer_typing_uninitialized_variables
  late final _animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 550));
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
      controller.dispose();
    super.dispose();
  
  }

  @override
  Widget build(BuildContext context) {
 
    return MouseRegion(
      onEnter: (event) {
        controller.forward();
      },
      onExit: (event) {
        controller.animateTo(0.0);
      },
      child: Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: btnColor.withAlpha(150),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 400,
          width: 400,
          child: Stack(
            children: [
             
              Positioned(
                child: Center(
                  child: SizedBox(
                    height: 190,
                    width: 190,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Container(
                        color: Colors.white,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image(
                            image: AssetImage(
                                "assets/projects/${widget.model.pic}"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: FadeTransition(
                    opacity: _animation,
                    child: Container(
                      height: 310,
                      width: 310,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.model.name,
                            style: text18black,
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Text(
                            widget.model.getLanguages(),
                            style: text18black,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: btnColor,
                              ),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProjectDetails(
                                          project: widget.model))),
                              child: Text(
                                " More details ",
                                style: text18white,
                              ))
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
