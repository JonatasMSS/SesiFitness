import 'package:get/get.dart';
import './meusTreinos_controller.dart';

class MeusTreinosBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MeusTreinosController(),
    );
  }
}
