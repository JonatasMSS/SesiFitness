import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class AvaliacoesaAlunoPageController extends GetxController {
  final AlunoModel dataPage = Get.arguments;
  List<AvaliacaoModel> avaliacoesAluno = [];
  final DataAuth _dataAuth;

  AvaliacoesaAlunoPageController(this._dataAuth);

  Future<void> getAllAvaliacoes() async {
    final _dataResponse =
        await _dataAuth.getAllAvaliacoesFromAluno(dataPage.cpf);

    if (avaliacoesAluno.isEmpty) {
      avaliacoesAluno.addAll(_dataResponse);
    } else {
      avaliacoesAluno.clear();
      avaliacoesAluno.addAll(_dataResponse);
    }
  }
}
