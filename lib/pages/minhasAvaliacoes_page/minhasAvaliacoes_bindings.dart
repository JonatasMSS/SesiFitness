import 'package:get/get.dart';
import './minhasAvaliacoes_controller.dart';

class MinhasAvaliacoesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MinhasAvaliacoesController(),
    );
  }
}
