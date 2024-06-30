import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constants/strings.dart';
import 'package:note_app/features/notes/models/note_model.dart';

part 'edit_notes_state.dart';

class EditNotesCubit extends Cubit<EditNotesState> {
  EditNotesCubit() : super(EditNotesInitial());

  editNotes(NoteModel note) {
    var noteBox = Hive.box<NoteModel>(AppStrings.kNotesBox);
    // await  noteBox.;
  }
}
