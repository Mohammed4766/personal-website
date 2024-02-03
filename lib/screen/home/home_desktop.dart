import 'package:flutter/material.dart';
import '../Project/projects_dsektop.dart';
import '../about/about_me_desktop.dart';
import '../contact/contact_desktop.dart';
import '../education/education_desktop.dart';
import '../skills/skills_desktop.dart';
import '../workeXperien/worke_xperien_desktop.dart';
import 'components/header_desktop.dart';

class HomeDesktop extends StatelessWidget {
  HomeDesktop({super.key});
  final ScrollController m = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HeaderDesktop(),
          AboutMeDesktop(),
          EducationDesktop(),
          WorkeXperienDesktop(),
          SkillsDesktop(),
          ProjectsDsektop(),
          ContactDesktop(),
        ],
      ),
    );
  }
}
