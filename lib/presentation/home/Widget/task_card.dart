import 'package:flutter/cupertino.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onTab;
  final VoidCallback onstatuseTab;

  const TaskCard({super.key, required this.task, required this.onTab, required this.onstatuseTab});




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
          boxShadow:[
            // BoxShadow(color: AppColors.textSecondary,offset: Offset(0, 2),blurRadius: 0.9),
            BoxShadow(color: AppColors.secondaryText,offset: Offset(0, 2),blurRadius: 0.9)

          ],

      ),
      child: Row(
        spacing: 10,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
                boxShadow:[
                  // BoxShadow(color: AppColors.textSecondary,offset: Offset(0, 2),blurRadius: 0.9),
                  BoxShadow(color: AppColors.secondaryText,offset: Offset(0, 2),blurRadius: 0.9)

                ],
            ),
            child: Icon(Icons.flag_circle_outlined,color: AppColors.amberIcon,size: 30,),
            
          ),
          Expanded(
            child: Column(
            
              children: [
                Text(task.description   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
