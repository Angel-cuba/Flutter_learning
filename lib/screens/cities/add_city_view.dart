import 'package:flutter/material.dart';
import 'package:weather_app/common/header.dart';
import 'package:weather_app/constants/ui_constants.dart';

class AddCityView extends StatelessWidget {
  const AddCityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.1,
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxPageWidth),
        child: Column(
          children: const <Widget>[
            Header(
              title: "Add city",
            ),
          ],
        ),
      ),
    );
  }
}
