import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EducationMobile extends StatelessWidget {
  const EducationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.3,
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Lottie.asset("assets/5.json", fit: BoxFit.fill, ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Education".toUpperCase(),
                  style: TextStyle(fontSize: height * 0.05)),
              
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 120, 112, 112)),
                child: Text(
                    "Bachelor`s degree in Software Engineering  2019 - 2024",
                    style: TextStyle(fontSize: width * 0.03)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
