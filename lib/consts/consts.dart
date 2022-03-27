import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/models/certification_model.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:google_fonts/google_fonts.dart';

const bgColor = Color.fromARGB(255, 193, 207, 2013);
const darkBgColor = Color.fromARGB(255, 24, 34, 44);

const btnColor = Color.fromARGB(255, 66, 172, 221);

//personal info
const myImage = AssetImage("assets/images/profile.jpg");
const resumeUrl = "assets/amyrfezzeni_resume.pdf";
const email = "amyrfezzeni@gmail.com";
const github = "https://www.github.com/amyr-fezzeni";
const linkedin = "https://www.linkedin.com/in/amyr-fezzeni";
const youtube = "https://www.youtube.com/channel/UC4IH-EmJwIScAvl2WXIsNsg";
const facebook = "https://www.facebook.com/amyr.fezzeni";
const codingame =
    "https://www.codingame.com/profile/31145782893c921e6576e9e0ce05f75c4244244";
const whatsapp = "tel://+21654230376";
//text styles
TextStyle text18white =
    GoogleFonts.arimaMadurai(color: Colors.white, fontSize: 18);
TextStyle text18black =
    GoogleFonts.arimaMadurai(color: Colors.black87, fontSize: 18);
TextStyle text18blue = GoogleFonts.arimaMadurai(color: btnColor, fontSize: 18);

TextStyle titleBlue = GoogleFonts.nunito(color: btnColor, fontSize: 50);
TextStyle titleWhite = GoogleFonts.nunito(color: Colors.white, fontSize: 50);
TextStyle titleblack = GoogleFonts.nunito(color: Colors.black, fontSize: 50);

TextStyle titleAnton =
    GoogleFonts.hammersmithOne(color: Colors.white, fontSize: 50);
TextStyle titleAntonblack =
    GoogleFonts.hammersmithOne(color: Colors.black87, fontSize: 50);

// about
TextStyle key = GoogleFonts.caveat(
    color: const Color.fromARGB(255, 36, 137, 177), fontSize: 30);
TextStyle key2 = GoogleFonts.nunito(
    color: const Color.fromARGB(255, 41, 245, 235), fontSize: 30);
TextStyle value = GoogleFonts.caveat(color: Colors.white, fontSize: 30);

String textAbout =
    """A 2nd-year computer software engineering student at TEK-UP University specializing in Software engineering and Professional Photographer based in Tunisia.
I'm a self learning person with a good problem solving ability.
""";

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
  ProjectModel(name: "Facial reconition", pic: "f.PNG", languages: ["Python"]),
  ProjectModel(name: "Snake Game", pic: "snake_.jpg", languages: ["Python"]),
  ProjectModel(name: "Text to Speech", pic: "tts.png", languages: ["Python"]),
];

List<CertificationModel> allCertifications = [
  CertificationModel(
      name: "Certified Associate in Python Programming (PCAP)",
      small: "pcap_small.png",
      original: "pcap.png"),
  CertificationModel(
      name: "MTA Python",
      small: "mta_python_small.PNG",
      original: "mta_python.PNG"),
  CertificationModel(
      name: "MTA Database Administration",
      small: "mta_database_small.PNG",
      original: "mta_database.png"),
  CertificationModel(
      name: "CodinGame Python Problem Solving",
      small: "python_problem_solving_small.png",
      original: "python_problem_solving.png"),
  CertificationModel(
      name: "CodinGame Dart Problem Solving",
      small: "dart_problem_solving_small.png",
      original: "dart_problem_solving.png"),
  CertificationModel(
      name: "CodinGame Java Problem Solving",
      small: "java_problem_solving_small.png",
      original: "java_problem_solving.png"),
  CertificationModel(
      name: "CodinGame Coding Speed Legend",
      small: "codingspeed_legend_small.png",
      original: "codingspeed_legend.png"),
  CertificationModel(
      name: "CodinGame Collaboration Gold",
      small: "collaboration_small.png",
      original: "collaboration.png"),
  CertificationModel(
      name: "CodinGame Algorithms Bronze",
      small: "algorithms_small.png",
      original: "algorithms.png"),
];
