//Criado por Jonatas Miguel e Luiz Felipe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindas_page.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_bindings.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_page.dart';

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
          page: () => boasvindas_page(),
<<<<<<< HEAD
=======
        ),
        GetPage(
          name: '/meusTreinos',
          page: () => MeusTreinosPage(),
          binding: MeusTreinosBindings(),
>>>>>>> c4d7806ab5bda4acbbac9eb296eb01ecbd512ddb
        )
      ],
    );
  }
}
