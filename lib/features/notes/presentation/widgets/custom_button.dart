import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.isLoading = false});
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: AppColors.kSecondaryColor,
      onPressed: onPressed,
      child: Align(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: isLoading
              ? SizedBox(
                  height: 23.h,
                  width: 23.w,
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.kPrimaryColor,
                  ),
                )
              : Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
        ),
      ),
    );
  }
}
