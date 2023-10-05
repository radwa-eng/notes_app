import 'package:flutter/material.dart';
import 'package:noteapp/views/customer_search_icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
      CustomeSearchIcon(icon: icon),
    ]);
  }
}
