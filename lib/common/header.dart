import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          const Divider()
        ],
      ),
    );
  }
}
