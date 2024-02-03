import 'package:flutter/material.dart';
import '../Project/projects_mobile.dart';
import '../about/about_me_mobile.dart';
import '../contact/contact_mobile.dart';
import '../education/education_mobile.dart';
import '../skills/skills_mobile.dart';
import '../workeXperien/worke_xperien_mobile.dart';
import 'components/header_mobile.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HeaderMobile(),
        AboutMeMobile(),
        EducationMobile(),
        WorkeXperienMobile(),
        SkillsMobile(),
        ProjectsMobile(),
        ContactMobile(),
      ],
    );
  }
}
