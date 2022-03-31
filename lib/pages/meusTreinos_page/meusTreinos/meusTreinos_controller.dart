import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

class MeusTreinosController extends GetxController {
  RxBool changeContainer = false.obs;
  final AlunoModel alunoData = Get.arguments;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
