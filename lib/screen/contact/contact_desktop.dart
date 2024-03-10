import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromARGB(255, 104, 99, 99),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(child: Lottie.asset("assets/7.json", height: height * 0.5)),
          Expanded(
            flex: 2,
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 28, 26, 26),
                          Color.fromARGB(255, 45, 42, 42)
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.email,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SelectableText("mohammed.khalid.alanzi@gmail.com",
                        style: TextStyle(fontSize: width * 0.02)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 28, 26, 26),
                          Color.fromARGB(255, 45, 42, 42)
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SelectableText("0506984766",
                        style: TextStyle(fontSize: width * 0.02)),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
