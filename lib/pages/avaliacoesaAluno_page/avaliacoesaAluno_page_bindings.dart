import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './avaliacoesaAluno_page_controller.dart';

class AvaliacoesaAlunoPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(AvaliacoesaAlunoPageController(Get.find()));
  }
}
