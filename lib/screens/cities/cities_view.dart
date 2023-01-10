import 'package:flutter/material.dart';
import 'package:weather_app/common/header.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/ui_constants.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.1,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, color: primaryColor),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxPageWidth),
        child: Column(
          children: const <Widget>[
            Header(
              title: "My cities",
            ),
            Expanded(
                child: Center(
              child: Text("No cities added yet"),
            ))
          ],
        ),
      ),
    );
  }
}
