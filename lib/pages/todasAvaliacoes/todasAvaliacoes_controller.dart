import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class TodasAvaliacoesController extends GetxController {
  final AlunoModel argRouteDataPage = Get.arguments;
  final List<AvaliacaoModel> avaliacoesAluno = [];
  final DataAuth _dataAuth;

  TodasAvaliacoesController(this._dataAuth);

  Future<void> getAllAvaliacoesFromAluno() async {
    final _responseData =
        await _dataAuth.getAllAvaliacoesFromAluno(argRouteDataPage.cpf);
    if (avaliacoesAluno.isEmpty) {
      avaliacoesAluno.addAll(_responseData);
    } else {
      avaliacoesAluno.clear();
      avaliacoesAluno.addAll(_responseData);
    }
  }
}
