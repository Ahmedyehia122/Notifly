part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoadindState extends NotesCubitState {}

final class NotesSuccessState extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccessState({required this.notes});
}

final class NotesFailureState extends NotesCubitState {
  final String errMessage;

  NotesFailureState({required this.errMessage});
}
