import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.text,
    required this.controller,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.kSecondaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: AppColors.kSecondaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(AppColors.kSecondaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
