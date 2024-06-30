import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/core/constants/colors.dart';
import 'package:note_app/core/constants/routes.dart';
import 'package:note_app/features/notes/models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;

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
          color: Color(note.color),
          borderRadius: BorderRadius.circular(
            16.r,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 23.sp,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: AppColors.kPrimaryColor,
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Text(
                note.date,
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
