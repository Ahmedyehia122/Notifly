import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/features/home/presentation/widgets/custom_button.dart';
import 'package:note_app/features/home/presentation/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();
  AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 25.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              text: 'Title',
              controller: title,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              text: 'Content',
              controller: content,
              maxLines: 5,
            ),
            SizedBox(
              height: 40.h,
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
