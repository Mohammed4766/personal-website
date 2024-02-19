import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'components/skills_box.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hard Skills".toUpperCase(),
                    style: TextStyle(fontSize: width * 0.05)),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  runSpacing: 15,
                  spacing: 15,
                  children: skillsBox(height - 100),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Soft Skills".toUpperCase(),
                    style: TextStyle(fontSize: width * 0.05)),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  runSpacing: 15,
                  spacing: 15,
                  children: hardskills(height - 100),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  skillsBox(width) {
    List<Widget> skila = [];
    for (int i = 0; i < mySkill.length; i++) {
      skila.add(SkillsBox(
        skill: mySkill[i],
        width: width,
      ));
    }
    return skila;
  }

  hardskills(width) {
    List<Widget> skila = [];
    for (int i = 0; i < hardSkills.length; i++) {
      skila.add(SkillsBox(
        skill: hardSkills[i],
        width: width,
      ));
    }
    return skila;
  }
}
