import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class ProfessorDetailsPageController extends GetxController {
  final ProfessorModel professor = Get.arguments;
  final List<AlunoModel> alunosProf = RxList();
  final DataAuth dataAuth;

  ProfessorDetailsPageController(this.dataAuth);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> returnProfAluno() async {
    if (alunosProf.isEmpty) {
      for (var id in professor.listaAlunos) {
        final _response = await dataAuth.findAlunoById(id);
        alunosProf.add(_response);
      }
    } else {
      alunosProf.clear();
      for (var id in professor.listaAlunos) {
        final _response = await dataAuth.findAlunoById(id);
        alunosProf.add(_response);
      }
    }
  }
}
