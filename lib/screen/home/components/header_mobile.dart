import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Name_display_box.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height - 100,
      child: Column(
        children: [
          Stack(
            children: [
              Lottie.asset(
                "assets/1.json",
                width: height * 0.43,
              ),
              Center(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    "assets/10.jpg",
                    width: height * 0.28,
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
