// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/photography/h_picture.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class StateProvider with ChangeNotifier {
  init(context) async {
    if (!isInit) {
      return;
    }

    controller.addListener(() {
      changeVisivilituSkill();
      upButton();
    });

    await Future.delayed(const Duration(milliseconds: 10));
    changeDisplayMode(context);
    initPhotos();
    filterProject("all");

    isInit = false;
  }

  bool isInit = true;

// dark & light mode
  bool darkMode = true;
  var text18 = text18white;
  var text14 = text18white.copyWith(fontSize: 14);
  var title = titleAnton;
  var bgcolor = darkBgColor;
  var secondColor = btnColor;
  var invertedColor = Colors.white;
  var secondTitle = titleBlue;
  //for phones
  var titlePhone = titleAntonPhone;
  var secondTitlePhone = titleBluePhone;

  bool isPhone = true;

  changeDisplayMode(context) {
    final width = MediaQuery.of(context).size.width < 1120;
    if (width == isPhone) {
      return;
    }
    isPhone = width;
  }

  changeDarkMode(b) {
    if (!b) {
      text18 = text18black;
      text14 = text18black.copyWith(fontSize: 14);
      bgcolor = bgColor;
      secondColor = btnColor;
      title = titleAntonblack;
      secondTitle = titleBlue;
      invertedColor = Colors.black;
      titlePhone = titleAntonblackPhone;
      secondTitlePhone = titleBluePhone;
    } else {
      text18 = text18white;
      text14 = text18white.copyWith(fontSize: 14);
      invertedColor = Colors.white;
      bgcolor = darkBgColor;
      secondColor = btnColor;
      title = titleAnton;
      secondTitle = titleBlue;
      titlePhone = titleAntonPhone;
      secondTitlePhone = titleBluePhone;
    }
    darkMode = b;
    notifyListeners();
  }

  // refresh skills
  bool skil = false;
  changeVisivilituSkill() {
    if (controller.offset > 200 && controller.offset < 1000) {
      if (skil == true) return;
      skil = true;
      notifyListeners();
    } else {
      if (skil == false) return;
      skil = false;
      notifyListeners();
    }
  }

//scroll controller
  final ScrollController controller = ScrollController();
  setControllerPosition(int index) {
    controller.animateTo(index.toDouble(),
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  final _about = 0;
  final _skil = 780;
  final _project = 1570;
  final _certification = 2820;
  final _photography = 4100;
  final _contact = 4890;
  final _aboutP = 0;
  final _skilP = 930;
  final _projectP = 1510;
  final _certificationP = 2115;
  final _photographyP = 2635;
  final _contactP = 3570;

  jumpToSection(int index) {
    switch (index) {
      case 0:
        setControllerPosition(isPhone ? _aboutP : _about);
        break;
      case 1:
        setControllerPosition(isPhone ? _skilP : _skil);
        break;
      case 2:
        setControllerPosition(isPhone ? _projectP : _project);
        break;
      case 3:
        setControllerPosition(isPhone ? _certificationP : _certification);
        break;
      case 4:
        setControllerPosition(isPhone ? _photographyP : _photography);
        break;
      case 5:
        setControllerPosition(isPhone ? _contactP : _contact);
        break;

      default:
        break;
    }
  }

  //button up on & off
  bool isUp = false;
  upButton() {
    if (controller.offset > 200) {
      if (isUp == true) return;
      isUp = true;
    } else {
      if (isUp == false) return;
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
    for (var model in allProjects) {
      if (isLanguage(model, language) || language == "all") {
        projects.add(model);
      }
    }
    isLoading = false;
    notifyListeners();
  }

  downloadFile() {
    AnchorElement anchorElement = AnchorElement(href: resumeUrl);
    anchorElement.download = resumeName;
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
