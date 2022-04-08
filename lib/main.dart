//Criado por Jonatas Miguel e Luiz Felipe

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/pages/ProfessorDetails_page/ProfessorDetails_page_bindings.dart';
import 'package:sesi_fitness/pages/ProfessorDetails_page/ProfessorDetails_page_page.dart';
import 'package:sesi_fitness/pages/Theme/academiaSesi.dart';
import 'package:sesi_fitness/pages/alunoDetails_page/alunoDetails__bindings.dart';
import 'package:sesi_fitness/pages/alunoDetails_page/alunoDetails__page.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_bindings.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_page.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasBindigns.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindas_page.dart';
import 'package:sesi_fitness/pages/dataBinding/dataBindings.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_bindings.dart';
import 'package:sesi_fitness/pages/meusTreinos_page/meusTreinos/meusTreinos_page.dart';
import 'package:sesi_fitness/pages/meusdados_page/meusdados_page_bindings.dart';
import 'package:sesi_fitness/pages/meusdados_page/meusdados_page_page.dart';
import 'package:sesi_fitness/pages/minhasAvaliacoes_page/minhasAvaliacoes_bindings.dart';
import 'package:sesi_fitness/pages/minhasAvaliacoes_page/minhasAvaliacoes_page.dart';
import 'package:sesi_fitness/pages/professorInicial_page/professorInicial_page_bindings.dart';
import 'package:sesi_fitness/pages/professorInicial_page/professorInicial_page_page.dart';
import 'package:sesi_fitness/pages/realizarAvalia%C3%A7%C3%A3o_page/realizarAvalia%C3%A7%C3%A3o_page_bindings.dart';
import 'package:sesi_fitness/pages/realizarAvalia%C3%A7%C3%A3o_page/realizarAvalia%C3%A7%C3%A3o_page_page.dart';
import 'package:sesi_fitness/pages/rodrigoPage_page/rodrigoPage_page_bindings.dart';
import 'package:sesi_fitness/pages/rodrigoPage_page/rodrigoPage_page_page.dart';
import 'package:sesi_fitness/pages/treinoDetalhado_page/treinoDetalhado_bindings.dart';
import 'package:sesi_fitness/pages/treinoDetalhado_page/treinoDetalhado_page.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(sesiFitnessMAIN());
}

//Tela main de execução com uso do GetX para direcionamento de paginas

// ignore: camel_case_types
class sesiFitnessMAIN extends StatelessWidget {
  const sesiFitnessMAIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AcademiasesiTheme().Theme,
      initialRoute: '/',
      initialBinding: Databindings(),
      getPages: [
        GetPage(
          name: '/',
          page: () => boasvindas_page(),
          binding: Boasvindasbindigns(),
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
          binding: MinhasAvaliacoesBindings(),
        ),
        GetPage(
          name: '/treinoDetalhado',
          page: () => TreinoDetalhadoPage(),
          binding: TreinoDetalhadoBindings(),
        ),
        GetPage(
          name: '/professorInit',
          page: () => ProfessorInicialPagePage(),
          binding: ProfessorInicialPageBindings(),
        ),
        GetPage(
          name: '/alunoDetails',
          page: () => AlunoDetailsPage(),
          binding: AlunoDetailsBindings(),
        ),
        GetPage(
          name: '/avaliacoesAluno',
          page: () => AvaliacoesaAlunoPagePage(),
          binding: AvaliacoesaAlunoPageBindings(),
        ),
        GetPage(
          name: '/realiAvali',
          page: () => RealizarAvaliacaoPagePage(),
          binding: RealizarAvaliacaoPageBindings(),
        ),
        GetPage(
          name: '/rodrigoPage',
          page: () => RodrigoPagePagePage(),
          binding: RodrigoPagePageBindings(),
        ),
        GetPage(
          name: "/professorDetails",
          page: () => ProfessorDetailsPagePage(),
          binding: ProfessorDetailsPageBindings(),
        ),
      ],
    );
  }
}
