import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class Boasvindascontroller extends GetxController {
  final List<AlunoModel> AlunosData = RxList();
  final DataAuth _dataAuth;

  Boasvindascontroller(this._dataAuth);
  @override
  void onInit() {
    findAllAlunos();
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
}
