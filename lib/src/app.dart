import 'package:flutter/material.dart';
import 'screens/intro.dart';
import 'screens/auth/register.dart';
import 'screens/home.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      routes: {
        '/': (context) => const Home(),
        '/intro':(context) => const Intro(),
        '/register': (context) => const Register(),
      },
      initialRoute: '/',
    );
  }
}