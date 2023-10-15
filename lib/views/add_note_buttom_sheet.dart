import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:noteapp/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteState>(listener: (context, state) {
        if (state is AddNoteFailure) {
          print("failed ${state.errorMessage}");
        }
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }),
    );
  }
}
