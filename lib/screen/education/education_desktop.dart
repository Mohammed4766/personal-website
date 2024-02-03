import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EducationDesktop extends StatelessWidget {
  const EducationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(child: Lottie.asset("assets/3.json", height: height * 0.5)),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Education".toUpperCase(),
                    style:  TextStyle(fontSize: width * 0.05)),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.all(20),
                  decoration:  const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: Color.fromARGB(110, 119, 113, 113),
                        offset: Offset(0, 0)
                      ) ,
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 120, 112, 112)),
                  child: Text(
                      "Bachelor`s degree in Software Engineering  2019 - 2024",
                      style: TextStyle(fontSize: width * 0.02)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
