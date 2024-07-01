import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem(
      {super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.cyan[700],
            child: CircleAvatar(
              radius: 27.r,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30.r,
            backgroundColor: color,
          );
  }
}
