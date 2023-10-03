import 'package:flutter/material.dart';
import 'package:noteapp/views/custome_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [
        SizedBox(
          height: 32,
        ),
        const CustomeTextField(),
      ]),
    );
  }
}
