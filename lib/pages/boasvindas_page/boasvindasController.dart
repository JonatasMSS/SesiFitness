import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';

import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class Boasvindascontroller extends GetxController {
  final List<AlunoModel> AlunosData = RxList();
  final List<ProfessorModel> professorData = RxList();
  final DataAuth _dataAuth;

  Boasvindascontroller(this._dataAuth);

  @override
  void onInit() {
    findAllAlunos();
    findAllProfessores();
    super.onInit();
  }

  Future<List<AlunoModel>> findAllAlunos() async {
    final responseData = await _dataAuth.findAllAlunos();

    if (AlunosData.isEmpty) {
      AlunosData.addAll(responseData);
    } else {
      AlunosData.clear();
      AlunosData.addAll(responseData);
    }
    return responseData;
  }

  Future<void> findAllProfessores() async {
    final _dataResponse = await _dataAuth.findAllProfessores();

    if (professorData.isEmpty) {
      professorData.addAll(_dataResponse);
    } else {
      professorData.clear();
      professorData.addAll(_dataResponse);
    }
  }
}
