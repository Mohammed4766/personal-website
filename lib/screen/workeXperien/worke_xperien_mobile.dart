import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../model/worke_xperien.dart';
import 'components/worke_xperien_box.dart';

class WorkeXperienMobile extends StatelessWidget {
  const WorkeXperienMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromARGB(255, 104, 99, 99),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            bottom: 0,
           
            child: Lottie.asset(
              "assets/6.json",
              fit: BoxFit.cover,
              reverse: true
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: width,
            child: Column(
              children: [
                Column(
                  children: [
                    Text("Work Experience".toUpperCase(),
                        style: TextStyle(
                            fontSize: height * 0.04,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: m(height)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  m(width) {
    List<Widget> workeXperienBox = [];
    for (int i = 0; i < myWorkeXperien.length; i++) {
      workeXperienBox.add(WorkeXperienBox(
        companyName: myWorkeXperien[i].companyName,
        startAndEndDate: myWorkeXperien[i].startAndEndDate,
        jobDescription: myWorkeXperien[i].jobDescription,
        jobTitle: myWorkeXperien[i].jobTitle,
        width: width,
      ));
    }
    return workeXperienBox;
  }
}
