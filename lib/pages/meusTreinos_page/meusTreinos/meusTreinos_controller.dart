import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_page.dart';
import 'package:sesi_fitness/repository/userAuth_repository/i_userAuth.dart';

class MeusTreinosController extends GetxController with StateMixin {
  RxBool changeContainer = false.obs;
  final AlunoModel alunoData = Get.arguments;
  final IUserAuth _iUserAuth;
  final List<DayModel> treinosAluno = RxList();

  MeusTreinosController(this._iUserAuth);
  @override
  void onInit() {
    // TODO: implement onInit
    findTreinosById(alunoData.id);

    super.onInit();
  }

  Future<void> findTreinosById(String id) async {
    final dataGet = await _iUserAuth.findAllTreinosById(id);
    if (treinosAluno.isEmpty) {
      treinosAluno.addAll(dataGet);
    } else {
      treinosAluno.clear();
      treinosAluno.addAll(dataGet);
    }
  }
}
