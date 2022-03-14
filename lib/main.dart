import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: SesifitnessForm(),
      ),
    );
  }
}
