import 'package:flutter/material.dart';
import 'package:weather_app/screens/cities/cities_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void handleNavigateTap(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => CitiesView())); // Scaffold
  }

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
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/images/flutter-no-bg.png', height: 150),
                  const SizedBox(height: 60),
                  const Text('Welcome, \nFlutter Developer!',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87)),
                  const Center(
                    child: Text(
                      'What do you, \nToday!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          handleNavigateTap(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade500,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        child: const Text('Login'),
                      ),
                    ],
                  )
                ]),
          )),
        ],
      ),
    );
  }
}
