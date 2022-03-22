//Criado por Jonatas Miguel e Luiz Felipe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/pages/Theme/academiaSesi.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindas_page.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_bindings.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_page.dart';
import 'package:sesi_fitness/pages/meusdados_page/meusdados_page_bindings.dart';
import 'package:sesi_fitness/pages/meusdados_page/meusdados_page_page.dart';
import 'package:sesi_fitness/pages/minhasAvaliacoes_page/minhasAvaliacoes_page.dart';

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
      theme: AcademiasesiTheme().Theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => boasvindas_page(),
        ),
        GetPage(
          name: '/meusTreinos',
          page: () => MeusTreinosPage(),
          binding: MeusTreinosBindings(),
        ),
        GetPage(
          name: '/meusDados',
          page: () => MeusdadosPagePage(),
          binding: MeusdadosPageBindings(),
        ),
        GetPage(
          name: '/minhasAvaliacoes',
          page: () => MinhasAvaliacoesPage(),
        )
      ],
    );
  }
}
