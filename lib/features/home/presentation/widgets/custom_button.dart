import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: AppColors.kSecondaryColor,
      onPressed: () {},
      child: Align(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
