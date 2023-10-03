import 'package:flutter/material.dart';
import 'package:noteapp/views/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (ontext, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: const NoteItem(),
      );
    });
  }
}
