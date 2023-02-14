// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/message.dart';
import '../services/navigation_service.dart';
import '../services/shared_data.dart';
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

  sendEmail({required String subject, required String message}) async {
    if (subject.isEmpty || message.isEmpty) {
      popup(
        NavigationService.navigatorKey.currentContext!,
        "OK",
        cancel: false,
        description: "subject or message empty",
      );
      return;
    } else {
      final id = generateId();
      Message _message = Message(
          id: id, message: message, subject: subject, created: DateTime.now());
      log(_message.toString());
      try {
        FirebaseFirestore.instance
            .collection("messages")
            .doc(_message.id)
            .set(_message.toMap())
            .then((value) => popup(
                  NavigationService.navigatorKey.currentContext!,
                  "OK",
                  cancel: false,
                  description: "your message has been sent\nThank you",
                ));
      } on Exception catch (e) {
        log("error: _" + e.toString());
      }
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
