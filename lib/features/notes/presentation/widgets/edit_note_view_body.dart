import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/customs/custom_app_bar.dart';
import 'package:note_app/core/customs/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  EditNoteViewBody({super.key});
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            children: [
              const CustomAppBar(
                textName: 'Edit Note',
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                text: 'Title',
                controller: titleController,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextField(
                text: 'Content',
                controller: contentController,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
