import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'name_display_box.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height - 140,
      child: Row(children: [
        const Expanded(flex: 2, child: Center(child: NameDisplayBox())),
        SizedBox(
          width: width * 0.2,
        ),
        Expanded(
            child: Stack(
          children: [
            Center(
              child: Lottie.asset(
                "assets/1.json",
              ),
            ),
            Center(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  "assets/10.jpg",
                  width: width * 0.15,
                ),
              ),
            ),
          ],
        )),
      ]),
    );
  }
}
