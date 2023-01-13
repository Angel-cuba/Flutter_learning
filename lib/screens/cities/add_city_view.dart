import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:weather_app/common/header.dart';
import 'package:weather_app/constants/debouncer.dart';
import 'package:weather_app/constants/ui_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/data/data.dart';
import 'package:weather_app/model/city.dart';

class AddCityView extends StatefulWidget {
  const AddCityView({super.key});

  @override
  _AddCityViewState createState() => _AddCityViewState();
}

class _AddCityViewState extends State<AddCityView> {
  final debouncer = Debouncer();
  List<City> cities = [];

  findAndAddCity(String cityName) {
    debouncer.run(() {
      // do something with cityName
      fetchData(TOKEN, cityName);
    });
  }

  void fetchData(String token, String text) async {
    final response = await http.get(
        Uri.parse(
            'https://pfa.foreca.com/api/v1/location/search/$text?lang=es'),
        headers: {'Authorization': 'Bearer $token'});
    // final data = json.decode(response.body);
    // print(data);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        // cities = data.map((json) => City.fromJson(json)).toList();
        // print(cities);
        print(data);
        cities = data.map((json) => City.fromJson(json)).toList().cast<City>();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    if (cities.isEmpty) {
      fetchData(TOKEN, 'Madrid');
    }
  }

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
          children: <Widget>[
            const Header(
              title: "Add city",
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(radius)),
              child: TextField(
                onChanged: findAndAddCity,
                decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    filled: true,
                    hintText: 'Search city',
                    fillColor: Color.fromARGB(121, 199, 194, 194),
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              itemCount: cities.length,
              itemBuilder: (BuildContext context, int index) {
                final city = cities[index];
                return city == null
                    ? const Center(child: CircularProgressIndicator())
                    : ListTile(
                        title: Text(city.name),
                        subtitle: Text(city.country),
                        // onTap: () {
                        //   Navigator.pop(context, cities[index]);
                        // },
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}
