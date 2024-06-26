import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(
          16.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 23.sp,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Text(
                  'Build your carrer with tharwat shamy',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: AppColors.kPrimaryColor,
                  size: 28,
                ),
              ),
            ),
            Text(
              'May21,2024',
              style: TextStyle(color: AppColors.kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
