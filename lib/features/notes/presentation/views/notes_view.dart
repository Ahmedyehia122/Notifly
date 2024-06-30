import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';
import 'package:note_app/features/notes/data/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/features/notes/presentation/widgets/add_note_button_sheet.dart';
import 'package:note_app/features/notes/presentation/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Icon(
          Icons.add,
          color: AppColors.kPrimaryColor,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
      ),
      body: const NotesViewBody(),
    );
  }
}
