import 'package:flutter/material.dart';
import 'package:noteapp/views/customer_search_icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text(
        'Notes',
        style: TextStyle(
          fontSize: 28,
        ),
      ),
      CustomeSearchIcon(),
    ]);
  }
}
