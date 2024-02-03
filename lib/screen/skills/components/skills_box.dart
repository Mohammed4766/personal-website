import 'package:flutter/material.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({
    super.key,
    required this.width,
    required this.skill,
  });

  final double width;
  final String skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 104, 99, 99),
                Color.fromARGB(255, 72, 68, 68)
              ]),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Text(skill.toUpperCase(), style: TextStyle(fontSize: width * 0.02)),
    );
  }
}
