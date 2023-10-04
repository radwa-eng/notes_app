import 'package:flutter/material.dart';
import 'package:noteapp/views/custome_buttom_sheet.dart';
import 'package:noteapp/views/custome_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 32,
          ),
          CustomeTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomeTextField(
            hint: 'Content',
            maxline: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomeButtomSheet(),
          SizedBox(
            height: 16,
          )
        ]),
      ),
    );
  }
}
