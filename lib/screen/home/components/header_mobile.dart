import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Name_display_box.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height - 120,
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Lottie.asset(
                  "assets/1.json",
                  width: height * 0.33,
                ),
              ),
              Center(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    "assets/10.jpg",
                    width: height * 0.20,
                  ),
                ),
              ),
            ],
          ),
          const Expanded(flex: 2, child: Center(child: NameDisplayBox())),
        ],
      ),
    );
  }
}
