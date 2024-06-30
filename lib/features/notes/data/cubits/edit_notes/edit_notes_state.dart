part of 'edit_notes_cubit.dart';

@immutable
sealed class EditNotesState {}

final class EditNotesInitial extends EditNotesState {}

final class EditNotesSuccessState extends EditNotesState {}

final class EditNotesFailureState extends EditNotesState {
  final String errMessage;

  EditNotesFailureState({required this.errMessage});
}
