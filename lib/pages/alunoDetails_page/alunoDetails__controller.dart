import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/treinos/treinos.dart';
import 'package:sesi_fitness/utils/loader/LoaderState.dart';

class AlunoDetailsController extends GetxController with LoaderMixin {
  final RxList lista = [].obs;
  final loaderState = false.obs;
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
    LoadListenner(loaderState);
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

  Future<void> setTreinosAlunos(String dia, List<dynamic> listaTreinos,
      Map<String, dynamic> dataTreino) async {
    loaderState.toggle();
    await _dataAuth.setTreinosFromIdAlunoAndDay(
        dataPage.cpf, dia, listaTreinos, dataTreino);
    await findTreinosFromAlunos();
    loaderState.toggle();

    navigator?.pop();
  }

  Future<void> removeTreino(String treinoName, String day) async {
    loaderState.toggle();
    await _dataAuth.removeTreinoByName(treinoName, dataPage.cpf, day);
    await findTreinosFromAlunos();
    loaderState.toggle();
  }
}
