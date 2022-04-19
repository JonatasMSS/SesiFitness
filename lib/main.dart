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
import 'package:sesi_fitness/pages/todasAvaliacoes/todasAvaliacoes_bindings.dart';
import 'package:sesi_fitness/pages/todasAvaliacoes/todasAvaliacoes_page.dart';
import 'package:sesi_fitness/pages/treinoDetalhado_page/treinoDetalhado_bindings.dart';
import 'package:sesi_fitness/pages/treinoDetalhado_page/treinoDetalhado_page.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // var dataProf = await FirebaseFirestore.instance.collection("Professores");
  // var Alunos = await FirebaseFirestore.instance.collection('Alunos').get();
  // // dataProf.doc('teste1').set(
  // //   {'alunos': Alunos.docs[11122233345]},
  // // ).then((value) => print("Concluido!"));

  // // for (var item in dataProf.docs) {
  // //   var data = item.data();
  // //   print(data);
  // //   // final DocumentReference dataS = data['Alunos'];
  // //   // final referenceDoc = await dataS.get();
  // //   // print(referenceDoc.data());
  // // }

  // await FirebaseFirestore.instance
  //     .collection('Alunos')
  //     .doc('11122233345')
  //     .collection('avaliacao')
  //     .doc(
  //         "${DateTime.now().day.toString()}-${DateTime.now().month}-${DateTime.now().year}")
  //     .set({
  //   "time": DateTime.now(),
  //   "avaliFisica": {
  //     "pa": "PA DATA",
  //     "fc": "FC DATA",
  //     "peso": "PESO DATA",
  //     "estatura": "ESTATURA DATA",
  //     "imc": "IMC DATA",
  //     "cirCintura": "CINTURA DATA",
  //     "cirQuadril": "QUADRIL DATA",
  //     "gorduraCorporal": "GORDURA DATA",
  //     "massaMuscular": "MUSCULO DATA",
  //   },
  //   "avaliForca": [
  //     {
  //       "exercicio": "DATA 1",
  //       "carga": "0 KG",
  //       "rep": "10",
  //     },
  //     {
  //       "exercicio": "DATA 2",
  //       "carga": "0 KG",
  //       "rep": "10",
  //     }
  //   ],
  //   "flex": {
  //     "tentativa 1": "TENTATIVA 1",
  //     "tentativa 2": "TENTATIVA 2",
  //     "tentativa 3": "TENTATIVA 3",
  //   },
  //   "habitosVida": {
  //     "alimentacao": "ALIM DATA",
  //     "ingestaoAlcool": "ALCOOL DATA",
  //     "tempoSentado": "TEMPO DATA",
  //     "sono": "SONO DATA",
  //     "hidratacao": "HIDRA DATA",
  //     "fumante": "FUMANTE DATA",
  //   }
  // }, SetOptions(merge: true)).then((value) => print("DEU"));

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
      theme: AcademiasesiTheme().Theme,
      initialRoute: '/',
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
        GetPage(
            name: "/todasAvaliacoesPage",
            page: () => TodasAvaliacoesPage(),
            binding: TodasAvaliacoesBindings()),
      ],
    );
  }
}
