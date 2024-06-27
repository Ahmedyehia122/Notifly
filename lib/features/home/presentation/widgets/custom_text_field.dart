import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;

  const CustomTextField({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: AppColors.kSecondaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
