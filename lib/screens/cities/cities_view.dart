import 'package:flutter/material.dart';
import 'package:weather_app/common/header.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/ui_constants.dart';
import 'package:weather_app/screens/cities/add_city_view.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({super.key});

  void handleNavigation(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: const AddCityView(),
          );
        }

        // builder: (context) => const AddCityView(), fullscreenDialog: true
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.1,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          handleNavigation(context);
        },
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
