import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/common/header.dart';
import 'package:weather_app/constants/debouncer.dart';
import 'package:weather_app/constants/ui_constants.dart';
import 'package:weather_app/data/data.dart';
// DotEnv.env['TOKEN']

Future<void> main() async {
  await dotenv.load();
  runApp(const AddCityView());
}

class AddCityView extends StatefulWidget {
  const AddCityView({super.key});

  @override
  State<AddCityView> createState() => _AddCityViewState();
}

const TOKEN =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9wZmEuZm9yZWNhLmNvbVwvYXV0aG9yaXplXC90b2tlbiIsImlhdCI6MTY3MzUwOTI2NywiZXhwIjoxNjczNTk1NjY3LCJuYmYiOjE2NzM1MDkyNjcsImp0aSI6ImNkMWViMGRlYzVhOTgxYzUiLCJzdWIiOiJhbmdlbGl0by1jdWJhMTk4NCIsImZtdCI6IlhEY09oakM0MCtBTGpsWVR0amJPaUE9PSJ9.BUgz-jX2ETXlcqj1-PvwB7CBNQKq2yqKBbWHuzc4EDw';
final debouncer = Debouncer();
final token = dotenv.env['API_TOKEN'].toString();

void _findandAddCity(String cityName) {
  debouncer.run(() {
    // do something with cityName
    fetchData(TOKEN, cityName);
  });
}

class _AddCityViewState extends State<AddCityView> {
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
                onChanged: _findandAddCity,
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
