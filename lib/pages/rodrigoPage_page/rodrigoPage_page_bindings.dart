import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import './rodrigoPage_page_controller.dart';

class RodrigoPagePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(RodrigoPagePageController(Get.find()));
  }
}
