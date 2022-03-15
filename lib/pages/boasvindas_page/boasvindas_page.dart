import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import 'package:sesi_fitness/widgets/sesiFitness_button.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

void main() {
  runApp(const boasvindas_page());
}

class boasvindas_page extends StatelessWidget {
  const boasvindas_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
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
