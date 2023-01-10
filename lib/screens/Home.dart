import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/main_bg.jpeg',
                width: 100, height: 100, fit: BoxFit.cover),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Image.asset('assets/images/flutter-no-bg.png', height: 150)
          ])
        ],
      ),
    );
  }
}
