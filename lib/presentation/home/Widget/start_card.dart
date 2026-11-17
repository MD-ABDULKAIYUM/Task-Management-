import 'package:flutter/material.dart';

import '../../Core/Apps_colors.dart';
import '../../Core/Apps_strings.dart';
class StartCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor ;
  final int count;
  final String Level;

  const new({super.key, required this.icon, required this.iconColor, required this.count, required this.Level});

  // const StartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),

      decoration: BoxDecoration(
          color: AppColors.white ,
          borderRadius: BorderRadius.circular(20),
          boxShadow:[
            // BoxShadow(color: AppColors.textSecondary,offset: Offset(0, 2),blurRadius: 0.9),
            BoxShadow(color: AppColors.secondaryText,offset: Offset(0, 2),blurRadius: 0.9)

          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,color:iconColor ),
          Text(count.toString(),style: TextStyle(
            fontSize: 25 ,
            fontWeight: FontWeight.w400,

          ),),
          Text(
            Level,
            style: TextStyle(
                fontSize: 18 ,
                color: AppColors.mutedText,
              fontWeight: FontWeight.w600

            ),
          )

        ],
      ),
    );
  }
}
