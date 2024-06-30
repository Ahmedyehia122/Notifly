import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constants/strings.dart';
import 'package:note_app/features/notes/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchNotes() async {
    var noteBox = Hive.box<NoteModel>(AppStrings.kNotesBox);
    notes = noteBox.values.toList();
    emit(NotesCubitSuccess());
  }
}
