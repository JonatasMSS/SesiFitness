import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './todasAvaliacoes_controller.dart';

class TodasAvaliacoesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(TodasAvaliacoesController(Get.find()));
  }
}
