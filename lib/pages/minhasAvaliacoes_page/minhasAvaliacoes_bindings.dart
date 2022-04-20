import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './minhasAvaliacoes_controller.dart';

class MinhasAvaliacoesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(
      MinhasAvaliacoesController(Get.find()),
    );
  }
}
