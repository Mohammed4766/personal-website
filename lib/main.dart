import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/screen/my_websitie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAjigTpLkAI5M8vxXSPWDG4kIHgI8L9snk",
          authDomain: "my-website-5f657.firebaseapp.com",
          projectId: "my-website-5f657",
          storageBucket: "my-website-5f657.appspot.com",
          messagingSenderId: "310691672311",
          appId: "1:310691672311:web:641edd9550d8c9695923f2"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mohammed alanzi",
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown
      }),
      theme: ThemeData.dark(),
      home: const MyWebSitie(),
    );
  }
}
