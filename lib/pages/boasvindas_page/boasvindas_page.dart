import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiFitness_button.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

void main() {
  runApp(boasvindas_page());
}

class boasvindas_page extends StatelessWidget {
  boasvindas_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Tela de boas vindas.png'),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 280),
            alignment: Alignment.center,
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SesifitnessForm(),
                  const SizedBox(
                    height: 10,
                  ),
                  SesifitnessButton(textDesc: "Logar-se"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
