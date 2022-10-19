import 'package:flutter/material.dart';
import 'package:turiscol/pages/index_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismo por Colombia',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const IndexPages(),
    );
  }
}