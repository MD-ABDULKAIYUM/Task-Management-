import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:task_managment/presentation/Core/Apps_strings.dart';
class splash_page extends StatefulWidget {
  const splash_page({super.key});

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
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
                  BoxShadow(color: AppColors.textSecondary,offset: Offset(0, 2),blurRadius: 0.9),

                ]
            
            
              ),
              child: Icon(Icons.check),
            ),
          ),
          const SizedBox(height: 4,),
          Text(AppStrings.appName),
        ],
      ),
    );
  }
}
