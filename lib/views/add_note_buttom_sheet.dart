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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),
        CustomeTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'Title',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomeTextField(
          onSaved: (value) {
            subTitle = value;
          },
          hint: 'Content',
          maxline: 5,
        ),
        const SizedBox(
          height: 32,
        ),
        CustomeButtomSheet(
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            } else {
              autoValidateMode = AutovalidateMode.always;
            }
          },
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
