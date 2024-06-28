import 'package:flutter/material.dart';
import 'package:note_app/core/constants/routes.dart';
import 'package:note_app/features/notes/presentation/views/edit_note_view.dart';
import 'package:note_app/features/notes/presentation/views/notes_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.initRoute: (context) => const NotesView(),
  AppRoutes.editNotesView: (context) => const EditNoteView(),
};
