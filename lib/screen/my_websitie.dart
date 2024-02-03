import 'package:flutter/material.dart';

import '../helper/responsive.dart';
import 'home/home_desktop.dart';
import 'home/home_mobile.dart';

class MyWebSitie extends StatefulWidget {
  const MyWebSitie({super.key});

  @override
  State<MyWebSitie> createState() => _MyWebSitieState();
}

class _MyWebSitieState extends State<MyWebSitie> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayout(mobile: const HomeMobile(), desktop: HomeDesktop()),
    );
  }
}
