import 'package:flutter/material.dart';
import 'package:myappsis22/src/app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      home: MyAppForm(),
    );
  }
}
