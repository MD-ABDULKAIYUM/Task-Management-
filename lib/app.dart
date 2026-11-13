import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Splash/splash_page.dart';
class MYapp extends StatelessWidget {
  const MYapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'task_managment',
      home: splash_page(),

    );
  }
}
