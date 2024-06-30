import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/features/notes/data/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10.h,
          ),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  bottom: 8.h,
                ),
                child: CustomNoteItem(
                  notes: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
