//Criado por Jonatas Miguel e Luiz Felipe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindas_page.dart';
import 'package:sesi_fitness/widgets/sesiFitness_button.dart';

Future<void> main() async {
  runApp(const sesiFitnessMAIN());
}

//Tela main de execução com uso do GetX para direcionamento de paginas

// ignore: camel_case_types
class sesiFitnessMAIN extends StatelessWidget {
  const sesiFitnessMAIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const boasvindas_page(),
        )
      ],
    );
  }
}
