part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoadingState extends AddNotesState {}

final class AddNotesSuccessState extends AddNotesState {}

final class AddNotesFailureState extends AddNotesState {
  final String errMessage;

  AddNotesFailureState({required this.errMessage});
}
