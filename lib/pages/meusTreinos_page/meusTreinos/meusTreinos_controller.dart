import 'dart:math';

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

class MeusTreinosController extends GetxController with StateMixin {
  RxBool changeContainer = false.obs;
  AlunoModel alunoData = Get.arguments;
  final List<DayModel> treinosAluno = RxList();

  final DataAuth _dataAuth;

  MeusTreinosController(this._dataAuth);

  @override
  void onInit() {
    findAllTreinos();

    super.onInit();
  }

  Future<void> findAllTreinos() async {
    /*
      Função coleta dados de todos os treinos dos alunos por dia
      Retorno: Lista de todos os treinos por dia
      OBS: Para especificar um dia deve-se usar um numero no index da lista:
        0:quarta,
        1:quinta,
        2:sabado,
        3:segunda,
        4:sexta,
        5:terca,
    */
    final _responseResult = await _dataAuth.findAllTreinos(alunoData.cpf);

    if (treinosAluno.isEmpty) {
      treinosAluno.addAll(_responseResult);
    } else {
      treinosAluno.clear();
      treinosAluno.addAll(_responseResult);
    }
  }
}
