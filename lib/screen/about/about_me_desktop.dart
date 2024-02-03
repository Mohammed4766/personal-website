import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/constants.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 15, bottom: 15),
      width: width,
      color: const Color.fromARGB(255, 104, 99, 99),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text("About Me", style: TextStyle(fontSize: width * 0.05)),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(Constants.aboutMe,
                      style: TextStyle(fontSize: width * 0.02)),
                ],
              )),
          Expanded(child: Lottie.asset("assets/5.json", height: height * 0.5)),
        ],
      ),
    );
  }
}
