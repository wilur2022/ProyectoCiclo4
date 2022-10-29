import 'package:app4/pages/splash_pages.dart';
import 'package:app4/pages/registre_pages.dart';
import 'package:app4/pages/login_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App TurisCOl',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        canvasColor: Color(0xFFFFF59D)
      ),
      //home: const LoginPages(),
      home: const SplashPages(),
    );
  }
}







