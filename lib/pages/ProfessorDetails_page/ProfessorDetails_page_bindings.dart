import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './ProfessorDetails_page_controller.dart';

class ProfessorDetailsPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(ProfessorDetailsPageController(Get.find()));
  }
}
