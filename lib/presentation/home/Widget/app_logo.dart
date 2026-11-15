import 'package:flutter/material.dart';

import '../../Core/Apps_colors.dart';
class AppLogo extends StatefulWidget {
  const AppLogo({super.key});

  @override
  State<AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  @override
  Widget build(BuildContext context) {
    return      Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Icon(Icons.check,color: AppColors.background,),
    );
  }
}
