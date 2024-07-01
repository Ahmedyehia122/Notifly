import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constants/strings.dart';
import 'package:note_app/features/notes/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color? color = const Color(0xff006E90);

  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(AppStrings.kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccessState());
    } catch (e) {
      emit(
        AddNotesFailureState(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
