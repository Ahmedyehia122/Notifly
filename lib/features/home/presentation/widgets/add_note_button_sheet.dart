import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';
import 'package:note_app/features/home/presentation/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 25.h,
      ),
      child: Column(
        children: [
          const CustomTextField(
            text: 'Title',
          ),
          SizedBox(
            height: 10.h,
          ),
          const CustomTextField(
            text: 'Content',
          ),
          const Spacer(),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            color: AppColors.kSecondaryColor,
            onPressed: () {},
            child: Align(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.black),
              ),
            )),
          )
        ],
      ),
    );
  }
}
