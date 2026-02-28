import 'package:flutter/material.dart';
import 'package:workshop_1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Introduction',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
