import 'package:flutter/material.dart';
import 'package:noteapp/views/custome_note_item.dart';
import 'package:noteapp/views/customer_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomerAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}