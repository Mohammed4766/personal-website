import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About Me", style: TextStyle(fontSize: 30)),
          const SizedBox(
            height: 25,
          ),
          Text(Constants.aboutMe, style: TextStyle(fontSize: width * 0.04)),
        ],
      ),
    );
  }
}
