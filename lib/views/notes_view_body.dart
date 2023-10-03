import 'package:flutter/material.dart';
import 'package:noteapp/views/customer_app_bar.dart';
import 'package:noteapp/views/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomerAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
