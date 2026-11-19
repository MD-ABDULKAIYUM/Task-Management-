import 'package:flutter/cupertino.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/presentation/Core/Apps_strings.dart';
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
                Text(task.description,maxLines: 1,overflow: .ellipsis ,
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w700,
                    color: AppColors.mutedText,

                  ), ),
                Text(task.description,maxLines: 1,overflow: .ellipsis ,
                  style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: task.isCompleted ? AppColors.mutedText:AppColors.primaryText,
                    decoration: task.isCompleted? TextDecoration.lineThrough:TextDecoration.none,
                  ), ),
                Row(
                  children: [
                    Icon(Icons.schedule,size: 15,color: AppColors.labelText,),
                    //ekane priority text nai
                    //Text(task.priority,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.prio),)

                  ],
                )
              ],
            ),
          ),
          Container(
            padding: .symmetric(horizontal: 11,vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius:
                BorderRadius.circular(100),

            ),
            child: Text(task.isCompleted ?AppStrings.done: AppStrings.pending,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 13,
                color: task.isCompleted? AppColors.green: AppColors.primary
              ),

            ),

          )
        ],
      ),
    );
  }
}
