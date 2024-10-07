import 'package:flutter/material.dart';
import 'package:practice/home.dart';
import 'package:practice/login.dart';
import 'package:practice/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {
        '/signup': (context) => const SingUpPage(),
        '/home': (context) =>  HomePage(),
        '/login': (context) => const LoginPage()
      },
    );
 } 
}