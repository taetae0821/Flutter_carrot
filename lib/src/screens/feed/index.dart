import 'package:carrot_flutter/src/screens/unknown.dart';
import 'package:flutter/material.dart';
import 'package:carrot_flutter/src/screens/feed/show.dart';
import 'package:carrot_flutter/src/screens/auth/register.dart';
import 'package:carrot_flutter/src/screens/intro.dart';
import 'package:carrot_flutter/src/screens/shared/data.dart';


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Carrot Market',
    routes: {
      '/': (context) => const Intro(),
      '/register': (context) => const Register(),
    },
    initialRoute: '/',
    onGenerateRoute: (route){
      if(route.name!.startsWith('/feed/')){
        final id = int.parse(route.name!.split('/').last);
        final item = feedList.firstWhere((e) => e['id'] == id);
        return MaterialPageRoute(
          builder: (context) => FeedShow(item), 
          );
      }
      return MaterialPageRoute(
        builder: (context) => const UnknownScreen(), 
        );
    },
   );
  }
}