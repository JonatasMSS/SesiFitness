import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';

class Boasvindasbindigns implements Bindings {
  @override
  void dependencies() {
    Get.put(Boasvindascontroller());
  }
}
