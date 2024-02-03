import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../model/worke_xperien.dart';
import 'components/worke_xperien_box.dart';

class WorkeXperienDesktop extends StatelessWidget {
  const WorkeXperienDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(20),
      width: width,
      color: const Color.fromARGB(255, 104, 99, 99),
      child: Column(
        children: [
          Text("Work Experience".toUpperCase(),
              style: TextStyle(fontSize: width * 0.05)),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: m(width)),
              ),
              Expanded(
                  child: Lottie.asset("assets/4.json", height: height * 0.5)),
            ],
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
