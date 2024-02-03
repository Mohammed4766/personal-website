import 'package:flutter/material.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(children: [
        const Text("Connect", style: TextStyle(fontSize: 30)),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 104, 99, 99),
                    Color.fromARGB(255, 72, 68, 68)
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
                  style: TextStyle(fontSize: width * 0.028)),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 104, 99, 99),
                    Color.fromARGB(255, 72, 68, 68)
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
                  style: TextStyle(fontSize: width * 0.028)),
            ],
          ),
        ),
      ]),
    );
  }
}
