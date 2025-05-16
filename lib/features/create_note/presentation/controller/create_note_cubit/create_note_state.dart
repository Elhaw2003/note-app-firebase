part of 'create_note_cubit.dart';

@immutable
sealed class CreateNoteState {}

final class CreateNoteInitialState extends CreateNoteState {}
final class CreateNoteLoadingState extends CreateNoteState {}
final class CreateNoteSuccessState extends CreateNoteState {}
final class CreateNoteFailureState extends CreateNoteState {
  final String message;
  CreateNoteFailureState({required this.message});
}
