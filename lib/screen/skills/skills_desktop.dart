import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/constants.dart';
import 'components/skills_box.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(child: Lottie.asset("assets/2.json", height: height * 0.5)),
          Expanded(
            flex: 2,
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
                        children: skillsBox(width),
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
                        children: hardskills(width),
                      ),
                    ],
                  ),
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
    for (int i = 1; i < mySkill.length; i++) {
      skila.add(SkillsBox(
        skill: mySkill[i],
        width: width,
      ));
    }
    return skila;
  }

  hardskills(width) {
    List<Widget> skila = [];
    for (int i = 1; i < hardSkills.length; i++) {
      skila.add(SkillsBox(
        skill: hardSkills[i],
        width: width,
      ));
    }
    return skila;
  }
}
