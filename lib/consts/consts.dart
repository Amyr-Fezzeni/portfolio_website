import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/about.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/certifications.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/contact.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/photography.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/projects.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/appbar.dart';
import 'package:flutter_portfolio_website/models/certification_model.dart';
import 'package:flutter_portfolio_website/models/image_model.dart';
import 'package:flutter_portfolio_website/models/project_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio_website/desktop/Pages/sections/skills.dart';

const bgColor = Color.fromARGB(255, 193, 207, 2013);
const darkBgColor = Color.fromARGB(255, 24, 34, 44);

const btnColor = Color.fromARGB(255, 66, 172, 221);

//personal info
const myImage = AssetImage("assets/images/profile.jpg");
const resumeUrl =
    "https://github.com/Amyr-Fezzeni/portfolio_website/raw/main/assets/amyrfezzeni_resume.pdf";
const resumeName = "Amyr Fezzeni Resume";
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
// phone
TextStyle titleBluePhone = GoogleFonts.nunito(color: btnColor, fontSize: 30);
TextStyle titleWhitePhone =
    GoogleFonts.nunito(color: Colors.white, fontSize: 30);
TextStyle titleblackPhone =
    GoogleFonts.nunito(color: Colors.black, fontSize: 30);

TextStyle titleAntonPhone =
    GoogleFonts.hammersmithOne(color: Colors.white, fontSize: 30);
TextStyle titleAntonblackPhone =
    GoogleFonts.hammersmithOne(color: Colors.black87, fontSize: 30);

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

List<dynamic> allSkills = [
  ["Python", 95],
  ["Python", 90],
  ["Dart", 90],
  ["Java", 80],
  ["NodeJS", 75],
  ["State Management", 90],
  ["Responsive UI", 75],
  ["SQL", 75],
  ["MongoDB", 85],
  ["Firebase", 85]
];

List<ProjectModel> allProjects = [
  ProjectModel(
    name: "XO Game",
    pic: "xo_game.png",
    languages: ["Flutter"],
    keyWords: ["Responsive UI", "Provider", "AI"],
    images: [
      ImageModel(link: "assets/projects/xo/xo1.jpg", type: "image"),
      ImageModel(link: "assets/projects/xo/xo2.jpg", type: "image"),
      ImageModel(link: "assets/projects/xo/xo3.jpg", type: "image"),
      ImageModel(link: "assets/projects/xo/xo4.jpg", type: "image"),
    ],
    description:
        """Tic Tac Toe is a free classic puzzle game also known as X and O game.
 •  Multi player mode
 •  VS AI mode
 •  Dark & light mode""",
  ),
  ProjectModel(
    name: "Truth Or Dare",
    pic: "truthordare.png",
    languages: ["Flutter"],
    keyWords: [
      "Responsive UI",
      "Provider",
      "State Management",
      "Firebase",
    ],
    images: [
      ImageModel(link: "assets/projects/truth or dare/t1.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t2.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t3.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t4.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t5.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t6.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t7.jpg", type: "image"),
      ImageModel(link: "assets/projects/truth or dare/t8.jpg", type: "image"),
    ],
    description: """""",
  ),
  ProjectModel(
      name: "Aphrodite Academy",
      pic: "_aphrodite.jpg",
      languages: [
        "Flutter",
        "Python"
      ],
      keyWords: [
        "Provider",
        "responsive UI",
        "Firebase",
        "Google Sin In",
        "Image manipulation",
        "Rest API",
        "PIL"
      ],
      images: [
        ImageModel(link: "assets/projects/aphrodite/a1.jpg", type: "image"),
        ImageModel(link: "assets/projects/aphrodite/a2.jpg", type: "image"),
        ImageModel(link: "assets/projects/aphrodite/a3.jpg", type: "image"),
        ImageModel(link: "assets/projects/aphrodite/a4.jpg", type: "image"),
      ],
      description:
          """mobile application for the management of an aesthetic training school with Flutter and google sheet.
 •  adding new students
 •  calculate the amount of money for registration
 •  remove and modify students informations
 •  payment option with history
 •  generate and download diplomes  
 """),
  ProjectModel(
      name: "Jarvis",
      pic: "jarvis.gif",
      languages: [
        "Python"
      ],
      keyWords: [
        'Arduino',
        'Speech recognition',
        'OpenCV',
        'Pickle',
        'Face recognition',
        'Face Detection',
        'Numpy'
      ],
      images: [
        ImageModel(link: "assets/projects/jarvis/giphy.gif", type: "image"),
        ImageModel(
            link: "assets/projects/jarvis/jarvis-iron-man.gif", type: "image")
      ],
      description:
          """J.A.R.V.I.S. is a multi-functional AI software program capable of managing the local environment, able to interact with human beings just as a living person.
The basic idea behind this project is to create a simple stand-alone application that allow the user to control his computer and the local environment like light switch, door lock... 
The application works same like Siri/ Google Assistant etc. But the application deals with the computer itself.
 - The system provides all the below stated functions:

 •  opening or close applications.
 •  browsing the internet.
 •  Searching command in google, Wikipedia or YouTube.
 •  Getting simple information about the local time and the weather.
 •  Control the light switch (environment).
 •  Control the door lock (environment).
 •  Create and remind notes.
 •  Read any selected text.
 •  controlling system brightness, volume.
 •  Control the webcam
 •  Face detection and facial recognition 
 •  Telling jokes
 •  Read last notification (Emails, Instagram messages, Devices state…)
"""),
  ProjectModel(
    name: "Astro Dating App",
    pic: "astro_logo.png",
    languages: ["Flutter", "Python"],
    keyWords: [
      "Responsive UI",
      "Provider",
      "Stream",
      "Real-time Database",
      "State Management",
      "Multi Language Support",
      "Flask",
      "Rest Api",
      "Crypting data",
      "Web Scrapping"
    ],
    images: [
      ImageModel(link: "assets/projects/astro/as1.jpg", type: "image"),
      ImageModel(link: "assets/projects/astro/as2.jpg", type: "image"),
      ImageModel(link: "assets/projects/astro/as3.jpg", type: "image"),
      ImageModel(link: "assets/projects/astro/as4.jpg", type: "image"),
      ImageModel(link: "assets/projects/astro/as5.jpg", type: "image"),
    ],
    description: """""",
  ),
  ProjectModel(
    name: "Jumia clone",
    pic: "logo_mini.png",
    languages: ["Flutter", "Python"],
    keyWords: [
      "Provider",
      "State Management",
      "Flask",
      "Rest Api",
      "MongoDB",
      "Web Scrapping"
    ],
    images: [
      ImageModel(link: "assets/projects/jumia clone/jumia1.PNG", type: "image"),
      ImageModel(link: "assets/projects/jumia clone/jumia2.PNG", type: "image"),
      ImageModel(link: "assets/projects/jumia clone/jumia3.PNG", type: "image"),
      ImageModel(link: "assets/projects/jumia clone/jumia4.PNG", type: "image"),
    ],
    description: """""",
  ),
  ProjectModel(
    name: "Bank management",
    pic: "cptbank.PNG",
    languages: ["Java"],
    keyWords: [
      "Responsive UI",
      "Provider",
      "State Management",
      "Multi Language Support",
      "Rest Api",
      "Web Scrapping"
    ],
    images: [],
    description: """""",
  ),
  ProjectModel(name: "Horoscope", pic: "horoscope.png", keyWords: [
    "Responsive UI",
    "Provider",
    "State Management",
    "Multi Language Support",
    "Rest Api",
    "Web Scrapping"
  ], images: [
    ImageModel(link: "assets/projects/horoscope/h1.jpg", type: "image"),
    ImageModel(link: "assets/projects/horoscope/h2.jpg", type: "image"),
    ImageModel(link: "assets/projects/horoscope/h3.jpg", type: "image"),
    ImageModel(link: "assets/projects/horoscope/h4.jpg", type: "image"),
  ], description: """""", languages: [
    "Flutter",
    "Python"
  ]),
  ProjectModel(
    name: "Facial reconition",
    pic: "f.PNG",
    languages: ["Python"],
    keyWords: [
      "Face Detection",
      "Face reconition",
    ],
    images: [
      ImageModel(link: "assets/projects/face_detection/f1.PNG", type: "image"),
    ],
    description: """""",
  ),
  ProjectModel(
    name: "Snake Game",
    pic: "snake_.jpg",
    languages: ["Python"],
    keyWords: [
      "PyGame",
      "AI",
    ],
    images: [
      ImageModel(link: "assets/projects/snake/snake.PNG", type: "image"),
    ],
    description: """""",
  ),
  ProjectModel(
    name: "Text to Speech",
    pic: "tts.png",
    languages: ["Python"],
    keyWords: ["Tkinter", "Pyttsx"],
    images: [
      ImageModel(link: "assets/projects/text to speach/tts.PNG", type: "image"),
    ],
    description: """""",
  ),
];

List<CertificationModel> allCertifications = [
  CertificationModel(
      name: "Certified Associate in Python Programming",
      small: "pcap_small.png",
      original: "pcap.png"),
  CertificationModel(
      name: "MTA Python",
      small: "mta_python_small.PNG",
      original: "mta_python.PNG"),
  CertificationModel(
      name: "MTA Database Administration",
      small: "mta_database_small.PNG",
      original: "mta_database.PNG"),
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

// sections

const desktopSections = [
  CustomAppBar(),
  About(),
  Skill(),
  Projects(),
  Certifications(),
  Photography(),
  Contact(),
];
const phoneSections = [
  AboutPhone(),
  SkillPhone(),
  ProjectsPhone(),
  CertificationsPhone(),
  PhotographyPhone(),
  ContactPhone(),
];
