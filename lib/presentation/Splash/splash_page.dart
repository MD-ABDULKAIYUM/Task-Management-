import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:task_managment/presentation/Core/Apps_strings.dart';
import 'package:task_managment/presentation/home/Home_page.dart';
class splash_page extends StatefulWidget {
  const splash_page({super.key});

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
  Timer? _timer;
  @override
  void initState(){
    super.initState();
    _timer = Timer(Duration(seconds: 2),goToHome);
  }

  void goToHome(){
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
  }
  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(color: AppColors.secondaryText,offset: Offset(0, 2),blurRadius: 0.9),

                ]
            
            
              ),
              child: Icon(Icons.check,color: AppColors.background,size: 50,),
            ),
          ),
          const SizedBox(height: 6,),
          Text(AppStrings.appName,style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
          Text(AppStrings.appTagline,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}
