import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Image.asset(
          'assets/images/Tela de boas vindas.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
