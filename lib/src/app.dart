import 'package:flutter/material.dart';
import 'screens/intro.dart';
import 'screens/auth/register.dart';
import 'screens/home.dart';

// app.dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      home: const Home(), // ← 이렇게 변경
      routes: {
        '/intro': (context) => const Intro(),
        '/register': (context) => const Register(),
      },
      // initialRoute: '/' ← 이 줄 삭제
    );
  }
}