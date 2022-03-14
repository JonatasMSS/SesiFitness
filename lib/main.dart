import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(const sesiFitnessMAIN());
}

// ignore: camel_case_types
class sesiFitnessMAIN extends StatelessWidget {
  const sesiFitnessMAIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SESI FITNESS',
      initialRoute: "/",
      getPages: [],
    );
  }
}
