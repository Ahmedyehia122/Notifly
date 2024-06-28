import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/core/constants/colors.dart';
import 'package:note_app/core/constants/routes.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.editNotesView,
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          bottom: 20.h,
          top: 10.h,
          left: 10.w,
          right: 10.w,
        ),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(
            16.r,
          ),
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
                  'Build your carrer with tharwat samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.trash,
                color: AppColors.kPrimaryColor,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Text(
                'May21,2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
