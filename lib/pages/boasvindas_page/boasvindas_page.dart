import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiFitness_button.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Tela de boas vindas.png'),
                ),
              ),
            ),
          ),
          Container(),
          Center(
            child: SesifitnessButton(textDesc: "Logar-se"),
          ),
          Positioned(
            top: 450,
            left: 150,
            child: SesifitnessForm(),
          )
        ],
      ),
    );
  }
}
