import 'package:app_turiscol/pages/registre_pages.dart';
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
      home: const RegistrePages(),
    );
  }
}







