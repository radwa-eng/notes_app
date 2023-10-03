import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kprimarycolor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
