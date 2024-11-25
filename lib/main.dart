import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Note',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Use a darker color for the primary swatch.
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
    );
  }
}

