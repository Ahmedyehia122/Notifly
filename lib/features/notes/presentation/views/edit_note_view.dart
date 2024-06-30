import 'package:flutter/material.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/presentation/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return EditNoteViewBody(
      note: note,
    );
  }
}
