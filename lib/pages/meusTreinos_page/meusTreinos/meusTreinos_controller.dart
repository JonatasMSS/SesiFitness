import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_page.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/treinos/treinos.dart';
import 'package:sesi_fitness/repository/userAuth_repository/i_userAuth.dart';

class MeusTreinosController extends GetxController with StateMixin {
  RxBool changeContainer = false.obs;
  final AlunoModel alunoData = Get.arguments;
  final List<Map<String, dynamic>> treinosAluno = RxList();
  final DataAuth _dataAuth;

  MeusTreinosController(this._dataAuth);
  @override
  void onInit() {
    // TODO: implement onIni
    findAllTreinos();

    super.onInit();
  }

  Future<void> findAllTreinos() async {
    final _dataLength = FirebaseFirestore.instance
        .collection('Alunos')
        .doc(alunoData.cpf)
        .collection('diasSemana');
    final _diasSemanaDocs =
        await _dataLength.get(); //Coleta todos os documentos do dia da semana.
    //Resultado: [instance, instance, ...]
    for (var dia in _diasSemanaDocs.docs) {
      final _subCollection =
          await _dataLength.doc(dia.id).collection('treinos').get();
      print("Dia " + dia.id);
      for (var treino in _subCollection.docs) {
        print(treino.id);
        print(treino.data());
      }
    }
  }
}
