import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/customs/custom_app_bar.dart';
import 'package:note_app/core/customs/custom_text_field.dart';
import 'package:note_app/features/notes/data/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/features/notes/models/note_model.dart';

class EditNoteViewBody extends StatelessWidget {
  EditNoteViewBody({super.key, required this.note});
  final TextEditingController? titleController = TextEditingController();
  final TextEditingController? contentController = TextEditingController();
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
          child: Column(
            children: [
              CustomAppBar(
                textName: 'Edit Note',
                icon: const Icon(Icons.check),
                onTapIcon: () {
                  if (titleController?.text?.isNotEmpty ?? false) {
                    note.title = titleController!.text;
                  } else {
                    note.title = note.title;
                  }

                  if (contentController?.text?.isNotEmpty ?? false) {
                    note.subTitle = contentController!.text;
                  } else {
                    note.subTitle = note.subTitle;
                  }
                  note.save();
                  BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                text: note.title,
                controller: titleController,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextField(
                text: note.subTitle,
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
