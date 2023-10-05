import 'package:flutter/material.dart';
import 'package:noteapp/views/customer_app_bar.dart';
import 'package:noteapp/views/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomerAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
