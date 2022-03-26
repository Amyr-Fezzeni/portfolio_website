import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/photography/h_picture.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';

class StateProvider with ChangeNotifier {
// dark & light mode
  bool darkMode = true;
  var text18 = text18white;
  var title = titleAnton;
  var bgcolor = darkBgColor;
  var secondColor = btnColor;
  var secondTitle = titleBlue;
  changeDarkMode(b) {
    if (!b) {
      text18 = text18black;
      bgcolor = bgColor;
      secondColor = btnColor;
      title = titleAntonblack;
      secondTitle = titleBlue;
    } else {
      text18 = text18white;
      bgcolor = darkBgColor;
      secondColor = btnColor;
      title = titleAnton;
      secondTitle = titleBlue;
    }
    darkMode = b;
    print(darkMode);
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
    print(index);

    notifyListeners();
  }

  List<ProjectModel> allProjects = [
    ProjectModel(name: "XO Game", pic: "xo_game.png", languages: ["Flutter"]),
    ProjectModel(
        name: "Truth Or Dare", pic: "truthordare.png", languages: ["Flutter"]),
    ProjectModel(
        name: "Aphrodite Academy",
        pic: "_aphrodite.jpg",
        languages: ["Flutter", "Python"]),
    ProjectModel(name: "Jarvis", pic: "jarvis.gif", languages: ["Python"]),
    ProjectModel(
        name: "Astro Dating App",
        pic: "astro_logo.png",
        languages: ["Flutter", "Python"]),
    ProjectModel(
        name: "Jumia clone",
        pic: "logo_mini.png",
        languages: ["Flutter", "Python"]),
    ProjectModel(
        name: "Bank management", pic: "cptbank.PNG", languages: ["Java"]),
    ProjectModel(
        name: "Horoscope",
        pic: "horoscope.png",
        languages: ["Flutter", "Python"]),
    ProjectModel(
        name: "Facial reconition", pic: "f.PNG", languages: ["Python"]),
    ProjectModel(name: "Snake Game", pic: "snake_.jpg", languages: ["Python"]),
    ProjectModel(name: "Text to Speech", pic: "tts.png", languages: ["Python"]),
  ];

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
}
