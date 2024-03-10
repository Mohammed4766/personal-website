import 'package:flutter/material.dart';
import '../Project/projects_dsektop.dart';
import '../about/about_me_desktop.dart';
import '../contact/contact_desktop.dart';
import '../education/education_desktop.dart';
import '../skills/skills_desktop.dart';
import '../workeXperien/worke_xperien_desktop.dart';
import 'components/header_desktop.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final ScrollController m = ScrollController();
  late final FirebaseFirestore firebaseFirestore;
  late final QuerySnapshot userCollection;

  @override
  void initState() {
    super.initState();
    getdadat();
  }

  getdadat() async {
    DateTime now = DateTime.now();
    firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> mm =
        await firebaseFirestore.collection("user").get();

    firebaseFirestore
        .collection("user")
        .add({"Platform": "web", "Date": now, "number": mm.size});
  }

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.black26,
            height: 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        // Call a function to scroll to a specific section
                        _scrollController.animateTo(
                          (600),
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const Text(
                        "Projects",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        // Call a function to scroll to a specific section
                        _scrollController.animateTo(
                          (1300),
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const Text(
                        "About Me",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        // Call a function to scroll to a specific section
                        _scrollController.animateTo(
                          (2200),
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const Text(
                        " Worke Experien",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        // Call a function to scroll to a specific section
                        _scrollController.animateTo(
                          (3100),
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const Text(
                        " Skills",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        // Call a function to scroll to a specific section
                        _scrollController.animateTo(
                          (_scrollController.position.maxScrollExtent),
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const Text(
                        "Contact",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                ]),
          ),
          const HeaderDesktop(),
          const ProjectsDsektop(),
          const AboutMeDesktop(),
          const EducationDesktop(),
          const WorkeXperienDesktop(),
          const SkillsDesktop(),
          const ContactDesktop(),
        ],
      ),
    );
  }
}
