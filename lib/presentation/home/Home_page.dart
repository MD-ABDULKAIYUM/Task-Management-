import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:task_managment/presentation/Core/Apps_strings.dart';
import 'package:task_managment/presentation/home/Widget/app_logo.dart';
import 'package:task_managment/presentation/home/Widget/start_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            spacing: 8,
            children: [
              AppLogo(),

              Text(AppStrings.appName)
              
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(32),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Icon(Icons.search,color: AppColors.primary,),
            ),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.goodMorning,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:AppColors.primaryText
              ),
            ),
           Text(
             "Kaiyum",style: TextStyle(
             fontSize: 30
           ),
           ),
           Row(
             spacing: 10,
             children: [
               Expanded(child: StartCard()),
               Expanded(child: StartCard()),
               Expanded(child: StartCard()),
             ],
           )

        
          ],
        
        ),
      ),
    );
  }
}
