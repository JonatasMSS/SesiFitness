import 'package:get/get.dart';
import './meusdados_page_controller.dart';

class MeusdadosPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MeusdadosPageController(),
    );
  }
}
