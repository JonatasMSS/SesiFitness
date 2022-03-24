import 'package:get/get.dart';
import './alunoDetails__controller.dart';

class AlunoDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AlunoDetailsController(),
    );
  }
}
