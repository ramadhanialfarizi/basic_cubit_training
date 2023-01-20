import 'package:basic_cubit_training/screen/home.dart';
import 'package:flutter/material.dart';

import 'bloc_cubit/model.dart';

void main() {
  // var person = Person(name: "rama", age: 27);
  // var person_2 = Person(name: "rama");
  // print(person == person_2);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
