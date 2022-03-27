import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/projects/project_card_animated.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return SizedBox(
      height: 900,
      width: size.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 50,
                color: Colors.grey,
              ),
              Text(
                "   Projects   ",
                style: state.title,
              ),
              Container(
                height: 1,
                width: 50,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 10,
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
              Container(
                width: 160,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: btnColor),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                  onPressed: () =>
                      context.read<StateProvider>().filterProject("Flutter"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/projects/flutter.png",
                        width: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Flutter",
                        style: state.text18,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 160,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: btnColor),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                  onPressed: () =>
                      context.read<StateProvider>().filterProject("Python"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/projects/python.png",
                        width: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Python",
                        style: state.text18,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 160,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: btnColor),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                  onPressed: () =>
                      context.read<StateProvider>().filterProject("Java"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/projects/java.png",
                        width: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "java",
                        style: state.text18,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Divider(
            color: btnColor,
            thickness: 1,
            height: 50,
          ),
          Wrap(
            children: state.projects
                .map((model) => ProjectCardAnimated(model: model))
                .toList(),
          )
          // RichText(
          //   text: TextSpan(text: "const", style: key2, children: [
          //     TextSpan(
          //       text: " about",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: " = {\n",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: "     \"name\" ",
          //       style: key2,
          //     ),
          //     TextSpan(
          //       text: ":\"Amyr Fezzeni \",\n",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: "     \"mail\" ",
          //       style: key2,
          //     ),
          //     TextSpan(
          //       text: ":\"amyrfezzeni@gmail.com \",\n",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: "     \"Location\" ",
          //       style: key2,
          //     ),
          //     TextSpan(
          //       text: ":\Mannouba, Tunis \",\n",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: "     \"Phone\" ",
          //       style: key2,
          //     ),
          //     TextSpan(
          //       text: ":\"+216 54 230 376 \",\n",
          //       style: value,
          //     ),
          //     TextSpan(
          //       text: "     \"name\" ",
          //       style: key2,
          //     ),
          //     TextSpan(
          //       text: ":\"Amyr Fezzeni \",\n};",
          //       style: value,
          //     ),
          //   ]),
          // ),
        ],
      ),
    );
  }
}
