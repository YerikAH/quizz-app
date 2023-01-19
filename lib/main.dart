import 'package:flutter/material.dart';
import 'package:quizz/home_page.dart';
import 'package:quizz/theme/theme_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz App',
      home: HomePage(),
      theme: ThemeApp.appConfig,
    );
  }
}