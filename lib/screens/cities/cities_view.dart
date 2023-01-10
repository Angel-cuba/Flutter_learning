import 'package:flutter/material.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: const Center(
        child: Text('Cities'),
      ),
    );
  }
}
