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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Header(
              title: "Add city",
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    filled: true,
                    hintText: 'Search city',
                    fillColor: Color.fromARGB(121, 199, 194, 194),
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
