import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_page.dart';
import 'package:sesi_fitness/repository/userAuth_repository/i_userAuth.dart';

class Boasvindascontroller extends GetxController {
  final List<AlunoModel> AlunosData = RxList();
  final IUserAuth _userAuth;

  Boasvindascontroller(this._userAuth);
  @override
  void onInit() {
    findAlunos();

    // TODO: implement onInit
    super.onInit();
  }

  Future<void> findAlunos() async {
    final dataResponse = await _userAuth.findAllAlunos();

    if (AlunosData.isEmpty) {
      AlunosData.addAll(dataResponse);
    } else {
      AlunosData.clear();
      AlunosData.addAll(dataResponse);
    }
  }
}
