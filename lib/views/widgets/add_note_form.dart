import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/custome_buttom_sheet.dart';
import 'package:noteapp/views/custome_text_feild.dart';

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
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomeButtomSheet(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var currentDate = DateTime.now();
                  var formattedCurrentDate =
                      DateFormat.yMd().format(currentDate);
                  var noteModel = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                }
              },
            );
          },
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
