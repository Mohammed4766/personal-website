import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../model/project_model.dart';

class ProjectsDsektop extends StatelessWidget {
  const ProjectsDsektop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: const Color.fromARGB(255, 104, 99, 99),
      child: Column(children: [
        Text("Projects".toUpperCase(), style: TextStyle(fontSize: width * 0.05)),
        projectCard(height, width),
      ]),
    );
  }

  Container projectCard(double height, double width) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: height * 0.6,
      child: Swiper(
        itemCount: projects.length,
        layout: SwiperLayout.STACK,
        itemWidth: width * 0.5,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(98, 195, 209, 202),
                    offset: Offset(
                      -5.0,
                      3.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 31, 26, 26),
                      Color.fromARGB(255, 46, 43, 43)
                    ])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    projects[index].projectImg,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(projects[index].projectName.toUpperCase(),
                          style: TextStyle(fontSize: width * 0.02)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(projects[index].projectDescription,
                          style: TextStyle(fontSize: width * 0.01)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
