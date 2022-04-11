import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';

import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class ProfessorInicialPageController extends GetxController {
  final DataAuth dataAuth;
  ProfessorInicialPageController(this.dataAuth);
  final ProfessorModel Prof = Get.arguments;
  final List<AlunoModel> alunosProf = RxList();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> returnProfAluno() async {
    if (alunosProf.isEmpty) {
      for (var id in Prof.listaAlunos) {
        final _response = await dataAuth.findAlunoById(id);
        alunosProf.add(_response);
      }
    } else {
      alunosProf.clear();
      for (var id in Prof.listaAlunos) {
        final _response = await dataAuth.findAlunoById(id);
        alunosProf.add(_response);
      }
    }
  }
}
