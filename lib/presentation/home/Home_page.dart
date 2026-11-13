import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:task_managment/presentation/Core/Apps_strings.dart';
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
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.check,color: AppColors.background,),
              ),
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
                color:AppColors.textSecondary
              ),
            ),
           Text(
             "Kaiyum",style: TextStyle(
             fontSize: 30
           ),
           ),
            Container(
              height: 100,
              width:100,
             
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20)
              ),
            )
        
          ],
        
        ),
      ),
    );
  }
}
