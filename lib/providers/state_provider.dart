// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/photography/h_picture.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class StateProvider with ChangeNotifier {
// dark & light mode
  bool darkMode = true;
  var text18 = text18white;
  var title = titleAnton;
  var bgcolor = darkBgColor;
  var secondColor = btnColor;
  var invertedColor = Colors.white;
  var secondTitle = titleBlue;
  changeDarkMode(b) {
    if (!b) {
      text18 = text18black;
      bgcolor = bgColor;
      secondColor = btnColor;
      title = titleAntonblack;
      secondTitle = titleBlue;
      invertedColor = Colors.black;
    } else {
      text18 = text18white;
      invertedColor = Colors.white;
      bgcolor = darkBgColor;
      secondColor = btnColor;
      title = titleAnton;
      secondTitle = titleBlue;
    }
    darkMode = b;
    notifyListeners();
  }

  // refresh skills
  bool skil = false;
  changeVisivilituSkill() {
    if (controller.offset > 200 && controller.offset < 1000) {
      skil = true;
    } else {
      skil = false;
    }

    notifyListeners();
  }

//scroll controller
  final ScrollController controller = ScrollController();
  setControllerPosition(int index) {
    controller.animateTo(index.toDouble(),
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  final _about = 50;
  final _skil = 780;
  final _project = 1570;
  final _certification = 2620;
  final _photography = 3700;
  final _contact = 4450;

  jumpToSection(int index) {
    switch (index) {
      case 0:
        setControllerPosition(_about);
        break;
      case 1:
        setControllerPosition(_skil);
        break;
      case 2:
        setControllerPosition(_project);
        break;
      case 3:
        setControllerPosition(_certification);
        break;
      case 4:
        setControllerPosition(_photography);
        break;
      case 5:
        setControllerPosition(_contact);
        break;

      default:
        break;
    }
  }

  //button up on & off
  bool isUp = false;
  upButton() {
    if (controller.offset > 200) {
      isUp = true;
    } else {
      isUp = false;
    }
    notifyListeners();
  }

// photography section
  final List<String> _verticalPhotos =
      List.generate(17, (index) => "assets/instagram/vertical/_$index.jpg");
  final List<String> _horizontalPhotos =
      List.generate(10, (index) => "assets/instagram/horizontal/_$index.jpg");
  List<Widget> vPhotos = [];
  List<Widget> hPhotos = [];
  initPhotos() {
    if (vPhotos.isEmpty) {
      vPhotos = List.generate(
          17,
          (index) => HPicture(
                link: _verticalPhotos[index],
                aspect: 4 / 5.3,
              ));
    }
    if (hPhotos.isEmpty) {
      hPhotos = List.generate(
          9,
          (index) => HPicture(
                link: _horizontalPhotos[index],
                aspect: 5.3 / 4,
              ));
    }
    notifyListeners();
  }

  int i = 0;
  changeList(index) {
    if (i == 0) {
      i = 16;
    } else {
      i -= 1;
    }
    vPhotos.removeAt(index);
    vPhotos.insert(
        1,
        HPicture(
          link: _verticalPhotos[i],
          aspect: 5.3 / 4,
        ));
    notifyListeners();
  }

  List<ProjectModel> projects = [];

  bool isLanguage(ProjectModel data, String language) {
    for (var l in data.languages) {
      if (l == language) {
        return true;
      }
    }
    return false;
  }

  bool isLoading = false;
  filterProject(String language) async {
    if (isLoading) {
      return;
    }
    projects = [];
    isLoading = true;
    notifyListeners();
    for (var model in allProjects) {
      if (isLanguage(model, language) || language == "all") {
        await Future.delayed(const Duration(milliseconds: 100));
        projects.add(model);
        notifyListeners();
      }
    }
    isLoading = false;
  }

  downloadFile() {
    AnchorElement anchorElement = AnchorElement(href: resumeUrl);
    anchorElement.download = "Amyr Fezzeni Resume";
    anchorElement.click();
  }

  TextEditingController subject = TextEditingController();
  TextEditingController body = TextEditingController();
  sendEmail() async {
    if (subject.text.isEmpty || body.text.isEmpty) {
      return;
    } else {
      final url =
          "mailto:$email?subject=${Uri.encodeFull(subject.text)}&body=${Uri.encodeFull(body.text)}";
      await launch(url);
    }
  }

  goToWebsite(int index) {
    switch (index) {
      case 1:
        launch(github);
        break;
      case 2:
        launch(linkedin);
        break;
      case 3:
        launch(youtube);
        break;
      case 4:
        launch(facebook);
        break;
      case 5:
        launch(codingame);
        break;
      case 6:
        launch(whatsapp);
        break;
      default:
        break;
    }
  }
}
