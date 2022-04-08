import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/i_dataAuth.dart';

class Boasvindasbindigns implements Bindings {
  @override
  void dependencies() {
    Get.put(DataAuth());
    Get.put(Boasvindascontroller(Get.find()));
  }
}
