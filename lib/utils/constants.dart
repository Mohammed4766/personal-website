import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Constants {
  static String aboutMe =
      "Motivated Software Engineer with application development experience. Holds a Bachelor’s degree in Software Engineering. Skilled in developing user-friendly mobile applications, implementing engaging features and utilizing modern technologies. Active member of the Google Club for Student Developers and recognized for participation in the Hail Al Hackathon. Possesses technical skills in Flutter, API integration, Dart, Figma and Firebase.";
}

// Colors
const Color myPrimaryColor = Color(0xffC0392B);
const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Social Media
const mySocialIcons = [
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

const mySocialLinks = [
  "https://www.linkedin.com/in/MohammedAlanzi/",
  "https://github.com/Mohammed4766",
];

// URL Launcher
void launchURL(String url) async =>
    // ignore: deprecated_member_use
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

final mySkill = [
  "Flutter",
  "Dart",
  "Firebase",
  "Fetch API",
  "OOP",
  "Figma",
  "software testing",
  "Development Process",
  "html",
  "Css",
  "php",
  "SQL"
];

final hardSkills = [
  "Problem-solving",
  "Teamwork",
  "Adaptability",
  "Time management",
  "Communication",
  "Attention to detail"
];
