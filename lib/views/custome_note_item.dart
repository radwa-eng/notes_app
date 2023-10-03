import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 177, 59),
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text('Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26)),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'build your career with tharwat samy',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
            ),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 16),
          child: Text(
            'May21 , 2022 ',
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
              fontSize: 14,
            ),
          ),
        ),
      ]),
    );
  }
}
