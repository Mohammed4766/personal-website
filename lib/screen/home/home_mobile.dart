import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Project/projects_mobile.dart';
import '../about/about_me_mobile.dart';
import '../contact/contact_mobile.dart';
import '../education/education_mobile.dart';
import '../skills/skills_mobile.dart';
import '../workeXperien/worke_xperien_mobile.dart';
import 'components/header_mobile.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  late final FirebaseFirestore firebaseFirestore;
  late final QuerySnapshot userCollection;
  final ScrollController _scrollController = ScrollController();

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
        .add({"Platform": "phone", "Date": now, "number": mm.size});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
                onPressed: () {
                  // Call a function to scroll to a specific section
                  _scrollController.animateTo(
                    (600),
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "Projects",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
                onPressed: () {
                  // Call a function to scroll to a specific section
                  _scrollController.animateTo(
                    (1150),
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "About Me",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
                onPressed: () {
                  // Call a function to scroll to a specific section
                  _scrollController.animateTo(
                    (1800),
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "Worke Xperien",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
                onPressed: () {
                  // Call a function to scroll to a specific section
                  _scrollController.animateTo(
                    (2500),
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );

                  Navigator.pop(context);
                },
                child: const Text(
                  " Skills",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
                onPressed: () {
                  // Call a function to scroll to a specific section
                  _scrollController.animateTo(
                    (_scrollController.position.maxScrollExtent),
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  " Contact",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ]),
      ),
      body: ListView(
        controller: _scrollController,
        children: const [
          HeaderMobile(),
          ProjectsMobile(),
          AboutMeMobile(),
          EducationMobile(),
          WorkeXperienMobile(),
          SkillsMobile(),
          ContactMobile(),
        ],
      ),
    );
  }
}
