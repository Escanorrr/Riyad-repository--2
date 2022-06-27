import 'package:flutter/material.dart';
import 'package:slides/slides.dart';
import 'package:oussamas_khra_dating_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Haroun Champ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  home(title: 'Haroun champ'),
    );
  }
}



