import 'package:flutter/material.dart';
import 'package:noteapp/views/custome_text_feild.dart';
import 'package:noteapp/views/customer_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomerAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ),
        SizedBox(height: 50),
        CustomeTextField(
          hint: "title",
        ),
        SizedBox(
          height: 16,
        ),
        CustomeTextField(
          hint: "content",
          maxline: 5,
        ),
      ],
    );
  }
}
