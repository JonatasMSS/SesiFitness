import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class MinhasAvaliacoesController extends GetxController {
  final AlunoModel alunoData = Get.arguments;
  late AvaliacaoModel avaliacaoAluno;
  final DataAuth _dataAuth;

  MinhasAvaliacoesController(this._dataAuth);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getLastAvaliacaoAluno() async {
    final _dataResponse =
        await _dataAuth.getLastAvaliacaoFromAluno(alunoData.cpf);

    avaliacaoAluno = _dataResponse.first;
  }
}
