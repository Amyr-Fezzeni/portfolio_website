import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/models/image_model.dart';

class ProjectModel {
  final String name;
  final String pic;
  final List<String> languages;
  final List<ImageModel> images;
  final String description;
  final List<String> keyWords;

  ProjectModel(
      {required this.name,
      required this.pic,
      required this.description,
      required this.images,
      required this.keyWords,
      required this.languages});

  String getLanguages() {
    String result = "";
    for (var l in languages) {
      result += "$l, ";
    }
    return result.substring(0, result.length - 2);
  }

  Widget getLanguagesWithIcons(TextStyle style) {
    List<Widget> widgets = [];

    for (var l in languages) {
      widgets.add(SizedBox(
        width: 160,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                getIcon(l),
                width: 50,
              ),
            ),
            Text(
              l,
              style: style,
            )
          ],
        ),
      ));
    }
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: widgets);
  }

  String getIcon(String language) {
    switch (language) {
      case "Flutter":
        return "assets/projects/flutter.png";
      case "Python":
        return "assets/projects/python.png";
      case "Java":
        return "assets/projects/java.png";
      default:
        break;
    }
    return "";
  }

  List<Widget> getkeyWors(TextStyle style) {
    List<Widget> widgets = [];

    for (var key in keyWords) {
      widgets.add(Container(
          // width: 200,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: btnColor, width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            key,
            style: style,
          )));
    }
    return widgets;
  }
}
