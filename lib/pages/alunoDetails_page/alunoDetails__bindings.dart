import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './alunoDetails__controller.dart';

class AlunoDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(
      AlunoDetailsController(Get.find()),
    );
  }
}
