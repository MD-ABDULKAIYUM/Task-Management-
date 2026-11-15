import 'package:flutter/material.dart';

import '../../Core/Apps_colors.dart';
import '../../Core/Apps_strings.dart';
class StartCard extends StatelessWidget {
  const StartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      width:120,

      decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(20),
          boxShadow:[
            // BoxShadow(color: AppColors.textSecondary,offset: Offset(0, 2),blurRadius: 0.9),
            BoxShadow(color: AppColors.secondaryText,offset: Offset(0, 2),blurRadius: 0.9)

          ]
      ),
      child: Padding(
        padding: EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.task,color: AppColors.primary,),
            Text('10',style: TextStyle(
              fontSize: 25 ,
              fontWeight: FontWeight.w400,

            ),),
            Text(
              AppStrings.total,
              style: TextStyle(
                  fontSize: 20 ,
                  color: AppColors.secondaryText
              ),
            )

          ],
        ),
      ),
    );
  }
}
