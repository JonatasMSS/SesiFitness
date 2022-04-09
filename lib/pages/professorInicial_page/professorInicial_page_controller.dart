import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class ProfessorInicialPageController extends GetxController {
  final DataAuth dataAuth;
  ProfessorInicialPageController(this.dataAuth);
  final List<AlunoModel> allAlunos = RxList();
  @override
  void onInit() {
    findAllAlunos();
    super.onInit();
  }

  Future<void> findAllAlunos() async {
    final _responseData = await dataAuth.findAllAlunos();
    if (allAlunos.isEmpty) {
      allAlunos.addAll(_responseData);
    } else {
      allAlunos.clear();
      allAlunos.addAll(allAlunos);
    }
  }
}
