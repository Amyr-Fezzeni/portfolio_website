// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../views/programming/project details/h_picture.dart';

class StateProvider with ChangeNotifier {
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

  int curresntIndex = 0;
  jumpToSection(int index) {
    if (curresntIndex == index) return;
    curresntIndex = index;
    notifyListeners();
  }

// photography section
  final List<String> verticalPhotos =
      List.generate(17, (index) => "assets/instagram/vertical/_$index.jpg");
  final List<String> horizontalPhotos =
      List.generate(10, (index) => "assets/instagram/horizontal/_$index.jpg");
  List<Widget> vPhotos = [];
  List<Widget> hPhotos = [];
  initPhotos() {
    if (vPhotos.isEmpty) {
      vPhotos = List.generate(
          17,
          (index) => HPicture(
                link: verticalPhotos[index],
                aspect: 4 / 5.3,
              ));
    }
    if (hPhotos.isEmpty) {
      hPhotos = List.generate(
          9,
          (index) => HPicture(
                link: horizontalPhotos[index],
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

  downloadFile() {
    // AnchorElement anchorElement = AnchorElement(href: resumeUrl);
    // anchorElement.download = resumeName;
    // anchorElement.click();
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
