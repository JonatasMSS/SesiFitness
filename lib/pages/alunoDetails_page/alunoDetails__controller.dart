import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/treinos/treinos.dart';

class AlunoDetailsController extends GetxController {
  final RxList lista = [].obs;

  final AlunoModel dataPage = Get.arguments;
  final DataAuth _dataAuth;

  AlunoDetailsController(this._dataAuth);

  @override
  void onReady() {
    // TODO: implement onReady

    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> findTreinosFromAlunos() async {
    final _responseResult = await _dataAuth.findAllTreinos(dataPage.cpf);
    if (lista.isEmpty) {
      lista.addAll(_responseResult);
    } else {
      lista.clear();
      lista.addAll(_responseResult);
    }
  }
}
