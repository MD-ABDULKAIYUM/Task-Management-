import 'package:flutter/cupertino.dart';
import 'package:task_managment/presentation/Core/Apps_colors.dart';

class FiltterButton extends StatelessWidget {
  final String lebel;
  final bool isSelected;
  // final voidCallback onTab;
  const FiltterButton({super.key,required this.lebel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: isSelected? AppColors.primary: AppColors.secondaryText,
        border: Border.all(
          color: isSelected ? AppColors.primary : AppColors.border,
        ),
        borderRadius: BorderRadius.circular(100)
      ),
      alignment: .center,
      child: Text(lebel,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),),
    );
  }
}
