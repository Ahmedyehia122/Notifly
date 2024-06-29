import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constants/strings.dart';
import 'package:note_app/features/notes/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(AppStrings.kNotesBox);
      var notesList = noteBox.values.toList();
      emit(NotesSuccessState(notes: notesList));
    } catch (e) {
      emit(
        NotesFailureState(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
