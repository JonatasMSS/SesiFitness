import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';
import 'package:sesi_fitness/repository/userAuth_repository/i_userAuth.dart';
import 'package:sesi_fitness/repository/userAuth_repository/userAuth.dart';

class Boasvindasbindigns implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserAuth>(Userauth());
    Get.put(Boasvindascontroller(Get.find()));
  }
}
